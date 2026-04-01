#-- start of make_header -----------------

#====================================
#  Library GE2Pi2PAlg
#
#   Generated Mon Mar 30 16:57:47 2026  by hujingguang
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_GE2Pi2PAlg_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_GE2Pi2PAlg_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_GE2Pi2PAlg

GE2Pi2PAlg_tag = $(tag)

#cmt_local_tagfile_GE2Pi2PAlg = $(GE2Pi2PAlg_tag)_GE2Pi2PAlg.make
cmt_local_tagfile_GE2Pi2PAlg = $(bin)$(GE2Pi2PAlg_tag)_GE2Pi2PAlg.make

else

tags      = $(tag),$(CMTEXTRATAGS)

GE2Pi2PAlg_tag = $(tag)

#cmt_local_tagfile_GE2Pi2PAlg = $(GE2Pi2PAlg_tag).make
cmt_local_tagfile_GE2Pi2PAlg = $(bin)$(GE2Pi2PAlg_tag).make

endif

include $(cmt_local_tagfile_GE2Pi2PAlg)
#-include $(cmt_local_tagfile_GE2Pi2PAlg)

ifdef cmt_GE2Pi2PAlg_has_target_tag

cmt_final_setup_GE2Pi2PAlg = $(bin)setup_GE2Pi2PAlg.make
cmt_dependencies_in_GE2Pi2PAlg = $(bin)dependencies_GE2Pi2PAlg.in
#cmt_final_setup_GE2Pi2PAlg = $(bin)GE2Pi2PAlg_GE2Pi2PAlgsetup.make
cmt_local_GE2Pi2PAlg_makefile = $(bin)GE2Pi2PAlg.make

else

cmt_final_setup_GE2Pi2PAlg = $(bin)setup.make
cmt_dependencies_in_GE2Pi2PAlg = $(bin)dependencies.in
#cmt_final_setup_GE2Pi2PAlg = $(bin)GE2Pi2PAlgsetup.make
cmt_local_GE2Pi2PAlg_makefile = $(bin)GE2Pi2PAlg.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)GE2Pi2PAlgsetup.make

#GE2Pi2PAlg :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'GE2Pi2PAlg'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = GE2Pi2PAlg/
#GE2Pi2PAlg::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

GE2Pi2PAlglibname   = $(bin)$(library_prefix)GE2Pi2PAlg$(library_suffix)
GE2Pi2PAlglib       = $(GE2Pi2PAlglibname).a
GE2Pi2PAlgstamp     = $(bin)GE2Pi2PAlg.stamp
GE2Pi2PAlgshstamp   = $(bin)GE2Pi2PAlg.shstamp

GE2Pi2PAlg :: dirs  GE2Pi2PAlgLIB
	$(echo) "GE2Pi2PAlg ok"

#-- end of libary_header ----------------

GE2Pi2PAlgLIB :: $(GE2Pi2PAlglib) $(GE2Pi2PAlgshstamp)
	@/bin/echo "------> GE2Pi2PAlg : library ok"

$(GE2Pi2PAlglib) :: $(bin)GE2Pi2PAlg.o $(bin)GE2Pi2P_entries.o $(bin)GE2Pi2P_load.o
	$(lib_echo) library
	$(lib_silent) cd $(bin); \
	  $(ar) $(GE2Pi2PAlglib) $?
	$(lib_silent) $(ranlib) $(GE2Pi2PAlglib)
	$(lib_silent) cat /dev/null >$(GE2Pi2PAlgstamp)

#------------------------------------------------------------------
#  Future improvement? to empty the object files after
#  storing in the library
#
##	  for f in $?; do \
##	    rm $${f}; touch $${f}; \
##	  done
#------------------------------------------------------------------

$(GE2Pi2PAlglibname).$(shlibsuffix) :: $(GE2Pi2PAlglib) $(GE2Pi2PAlgstamps)
	$(lib_silent) cd $(bin); QUIET=$(QUIET); $(make_shlib) "$(tags)" GE2Pi2PAlg $(GE2Pi2PAlg_shlibflags)

$(GE2Pi2PAlgshstamp) :: $(GE2Pi2PAlglibname).$(shlibsuffix)
	@if test -f $(GE2Pi2PAlglibname).$(shlibsuffix) ; then cat /dev/null >$(GE2Pi2PAlgshstamp) ; fi

GE2Pi2PAlgclean ::
	$(cleanup_echo) objects
	$(cleanup_silent) cd $(bin); /bin/rm -f $(bin)GE2Pi2PAlg.o $(bin)GE2Pi2P_entries.o $(bin)GE2Pi2P_load.o

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

ifeq ($(INSTALLAREA),)
installarea = $(CMTINSTALLAREA)
else
ifeq ($(findstring `,$(INSTALLAREA)),`)
installarea = $(shell $(subst `,, $(INSTALLAREA)))
else
installarea = $(INSTALLAREA)
endif
endif

install_dir = ${installarea}/${CMTCONFIG}/lib
GE2Pi2PAlginstallname = $(library_prefix)GE2Pi2PAlg$(library_suffix).$(shlibsuffix)

GE2Pi2PAlg :: GE2Pi2PAlginstall

install :: GE2Pi2PAlginstall

GE2Pi2PAlginstall :: $(install_dir)/$(GE2Pi2PAlginstallname)
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

$(install_dir)/$(GE2Pi2PAlginstallname) :: $(bin)$(GE2Pi2PAlginstallname)
	@if test ! "${installarea}" = ""; then \
	  cd $(bin); \
	  if test ! "$(install_dir)" = ""; then \
	    if test ! -d "$(install_dir)"; then \
	      mkdir -p $(install_dir); \
	    fi ; \
	    if test -d "$(install_dir)"; then \
	      echo "Installing library $(GE2Pi2PAlginstallname) into $(install_dir)"; \
	      if test -e $(install_dir)/$(GE2Pi2PAlginstallname); then \
	        $(cmt_uninstall_area_command) $(install_dir)/$(GE2Pi2PAlginstallname); \
	        $(cmt_uninstall_area_command) $(install_dir)/$(GE2Pi2PAlginstallname).cmtref; \
	      fi; \
	      $(cmt_install_area_command) `pwd`/$(GE2Pi2PAlginstallname) $(install_dir)/$(GE2Pi2PAlginstallname); \
	      echo `pwd`/$(GE2Pi2PAlginstallname) >$(install_dir)/$(GE2Pi2PAlginstallname).cmtref; \
	    fi \
          else \
	    echo "Cannot install library $(GE2Pi2PAlginstallname), no installation directory specified"; \
	  fi; \
	fi

GE2Pi2PAlgclean :: GE2Pi2PAlguninstall

uninstall :: GE2Pi2PAlguninstall

GE2Pi2PAlguninstall ::
	@if test ! "${installarea}" = ""; then \
	  cd $(bin); \
	  if test ! "$(install_dir)" = ""; then \
	    if test -d "$(install_dir)"; then \
	      echo "Removing installed library $(GE2Pi2PAlginstallname) from $(install_dir)"; \
	      $(cmt_uninstall_area_command) $(install_dir)/$(GE2Pi2PAlginstallname); \
	      $(cmt_uninstall_area_command) $(install_dir)/$(GE2Pi2PAlginstallname).cmtref; \
	    fi \
          else \
	    echo "Cannot uninstall library $(GE2Pi2PAlginstallname), no installation directory specified"; \
	  fi; \
	fi




#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),GE2Pi2PAlgclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)GE2Pi2PAlg.d

$(bin)$(binobj)GE2Pi2PAlg.d :

$(bin)$(binobj)GE2Pi2PAlg.o : $(cmt_final_setup_GE2Pi2PAlg)

$(bin)$(binobj)GE2Pi2PAlg.o : $(src)GE2Pi2PAlg.cxx
	$(cpp_echo) $(src)GE2Pi2PAlg.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(GE2Pi2PAlg_pp_cppflags) $(lib_GE2Pi2PAlg_pp_cppflags) $(GE2Pi2PAlg_pp_cppflags) $(use_cppflags) $(GE2Pi2PAlg_cppflags) $(lib_GE2Pi2PAlg_cppflags) $(GE2Pi2PAlg_cppflags) $(GE2Pi2PAlg_cxx_cppflags)  $(src)GE2Pi2PAlg.cxx
endif
endif

else
$(bin)GE2Pi2PAlg_dependencies.make : $(GE2Pi2PAlg_cxx_dependencies)

$(bin)GE2Pi2PAlg_dependencies.make : $(src)GE2Pi2PAlg.cxx

$(bin)$(binobj)GE2Pi2PAlg.o : $(GE2Pi2PAlg_cxx_dependencies)
	$(cpp_echo) $(src)GE2Pi2PAlg.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(GE2Pi2PAlg_pp_cppflags) $(lib_GE2Pi2PAlg_pp_cppflags) $(GE2Pi2PAlg_pp_cppflags) $(use_cppflags) $(GE2Pi2PAlg_cppflags) $(lib_GE2Pi2PAlg_cppflags) $(GE2Pi2PAlg_cppflags) $(GE2Pi2PAlg_cxx_cppflags)  $(src)GE2Pi2PAlg.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),GE2Pi2PAlgclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)GE2Pi2P_entries.d

$(bin)$(binobj)GE2Pi2P_entries.d :

$(bin)$(binobj)GE2Pi2P_entries.o : $(cmt_final_setup_GE2Pi2PAlg)

$(bin)$(binobj)GE2Pi2P_entries.o : $(src)components/GE2Pi2P_entries.cxx
	$(cpp_echo) $(src)components/GE2Pi2P_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(GE2Pi2PAlg_pp_cppflags) $(lib_GE2Pi2PAlg_pp_cppflags) $(GE2Pi2P_entries_pp_cppflags) $(use_cppflags) $(GE2Pi2PAlg_cppflags) $(lib_GE2Pi2PAlg_cppflags) $(GE2Pi2P_entries_cppflags) $(GE2Pi2P_entries_cxx_cppflags) -I../src/components $(src)components/GE2Pi2P_entries.cxx
endif
endif

else
$(bin)GE2Pi2PAlg_dependencies.make : $(GE2Pi2P_entries_cxx_dependencies)

$(bin)GE2Pi2PAlg_dependencies.make : $(src)components/GE2Pi2P_entries.cxx

$(bin)$(binobj)GE2Pi2P_entries.o : $(GE2Pi2P_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/GE2Pi2P_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(GE2Pi2PAlg_pp_cppflags) $(lib_GE2Pi2PAlg_pp_cppflags) $(GE2Pi2P_entries_pp_cppflags) $(use_cppflags) $(GE2Pi2PAlg_cppflags) $(lib_GE2Pi2PAlg_cppflags) $(GE2Pi2P_entries_cppflags) $(GE2Pi2P_entries_cxx_cppflags) -I../src/components $(src)components/GE2Pi2P_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),GE2Pi2PAlgclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)GE2Pi2P_load.d

$(bin)$(binobj)GE2Pi2P_load.d :

$(bin)$(binobj)GE2Pi2P_load.o : $(cmt_final_setup_GE2Pi2PAlg)

$(bin)$(binobj)GE2Pi2P_load.o : $(src)components/GE2Pi2P_load.cxx
	$(cpp_echo) $(src)components/GE2Pi2P_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(GE2Pi2PAlg_pp_cppflags) $(lib_GE2Pi2PAlg_pp_cppflags) $(GE2Pi2P_load_pp_cppflags) $(use_cppflags) $(GE2Pi2PAlg_cppflags) $(lib_GE2Pi2PAlg_cppflags) $(GE2Pi2P_load_cppflags) $(GE2Pi2P_load_cxx_cppflags) -I../src/components $(src)components/GE2Pi2P_load.cxx
endif
endif

else
$(bin)GE2Pi2PAlg_dependencies.make : $(GE2Pi2P_load_cxx_dependencies)

$(bin)GE2Pi2PAlg_dependencies.make : $(src)components/GE2Pi2P_load.cxx

$(bin)$(binobj)GE2Pi2P_load.o : $(GE2Pi2P_load_cxx_dependencies)
	$(cpp_echo) $(src)components/GE2Pi2P_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(GE2Pi2PAlg_pp_cppflags) $(lib_GE2Pi2PAlg_pp_cppflags) $(GE2Pi2P_load_pp_cppflags) $(use_cppflags) $(GE2Pi2PAlg_cppflags) $(lib_GE2Pi2PAlg_cppflags) $(GE2Pi2P_load_cppflags) $(GE2Pi2P_load_cxx_cppflags) -I../src/components $(src)components/GE2Pi2P_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: GE2Pi2PAlgclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(GE2Pi2PAlg.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

GE2Pi2PAlgclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library GE2Pi2PAlg
	-$(cleanup_silent) cd $(bin); /bin/rm -f $(library_prefix)GE2Pi2PAlg$(library_suffix).a $(library_prefix)GE2Pi2PAlg$(library_suffix).s? GE2Pi2PAlg.stamp GE2Pi2PAlg.shstamp
#-- end of cleanup_library ---------------
