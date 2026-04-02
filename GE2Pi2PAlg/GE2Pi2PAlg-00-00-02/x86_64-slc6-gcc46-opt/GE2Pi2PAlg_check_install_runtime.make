#-- start of make_header -----------------

#====================================
#  Document GE2Pi2PAlg_check_install_runtime
#
#   Generated Wed Apr  1 19:33:41 2026  by hujingguang
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_GE2Pi2PAlg_check_install_runtime_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_GE2Pi2PAlg_check_install_runtime_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_GE2Pi2PAlg_check_install_runtime

GE2Pi2PAlg_tag = $(tag)

#cmt_local_tagfile_GE2Pi2PAlg_check_install_runtime = $(GE2Pi2PAlg_tag)_GE2Pi2PAlg_check_install_runtime.make
cmt_local_tagfile_GE2Pi2PAlg_check_install_runtime = $(bin)$(GE2Pi2PAlg_tag)_GE2Pi2PAlg_check_install_runtime.make

else

tags      = $(tag),$(CMTEXTRATAGS)

GE2Pi2PAlg_tag = $(tag)

#cmt_local_tagfile_GE2Pi2PAlg_check_install_runtime = $(GE2Pi2PAlg_tag).make
cmt_local_tagfile_GE2Pi2PAlg_check_install_runtime = $(bin)$(GE2Pi2PAlg_tag).make

endif

include $(cmt_local_tagfile_GE2Pi2PAlg_check_install_runtime)
#-include $(cmt_local_tagfile_GE2Pi2PAlg_check_install_runtime)

ifdef cmt_GE2Pi2PAlg_check_install_runtime_has_target_tag

cmt_final_setup_GE2Pi2PAlg_check_install_runtime = $(bin)setup_GE2Pi2PAlg_check_install_runtime.make
cmt_dependencies_in_GE2Pi2PAlg_check_install_runtime = $(bin)dependencies_GE2Pi2PAlg_check_install_runtime.in
#cmt_final_setup_GE2Pi2PAlg_check_install_runtime = $(bin)GE2Pi2PAlg_GE2Pi2PAlg_check_install_runtimesetup.make
cmt_local_GE2Pi2PAlg_check_install_runtime_makefile = $(bin)GE2Pi2PAlg_check_install_runtime.make

else

cmt_final_setup_GE2Pi2PAlg_check_install_runtime = $(bin)setup.make
cmt_dependencies_in_GE2Pi2PAlg_check_install_runtime = $(bin)dependencies.in
#cmt_final_setup_GE2Pi2PAlg_check_install_runtime = $(bin)GE2Pi2PAlgsetup.make
cmt_local_GE2Pi2PAlg_check_install_runtime_makefile = $(bin)GE2Pi2PAlg_check_install_runtime.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)GE2Pi2PAlgsetup.make

#GE2Pi2PAlg_check_install_runtime :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'GE2Pi2PAlg_check_install_runtime'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = GE2Pi2PAlg_check_install_runtime/
#GE2Pi2PAlg_check_install_runtime::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of cmt_action_runner_header ---------------

ifdef ONCE
GE2Pi2PAlg_check_install_runtime_once = 1
endif

ifdef GE2Pi2PAlg_check_install_runtime_once

GE2Pi2PAlg_check_install_runtimeactionstamp = $(bin)GE2Pi2PAlg_check_install_runtime.actionstamp
#GE2Pi2PAlg_check_install_runtimeactionstamp = GE2Pi2PAlg_check_install_runtime.actionstamp

GE2Pi2PAlg_check_install_runtime :: $(GE2Pi2PAlg_check_install_runtimeactionstamp)
	$(echo) "GE2Pi2PAlg_check_install_runtime ok"
#	@echo GE2Pi2PAlg_check_install_runtime ok

#$(GE2Pi2PAlg_check_install_runtimeactionstamp) :: $(GE2Pi2PAlg_check_install_runtime_dependencies)
$(GE2Pi2PAlg_check_install_runtimeactionstamp) ::
	$(silent) /cvmfs/bes3.ihep.ac.cn/bes3sw/Boss/7.0.9/BesPolicy/BesPolicy-01-05-05/cmt/bes_check_installations.sh -files= -s=../share *.txt   -installdir=/besfs5/groups/jpsi/jpsigroup/user/hujingguang/7.0.9/workarea-7.0.9/InstallArea/share
	$(silent) cat /dev/null > $(GE2Pi2PAlg_check_install_runtimeactionstamp)
#	@echo ok > $(GE2Pi2PAlg_check_install_runtimeactionstamp)

GE2Pi2PAlg_check_install_runtimeclean ::
	$(cleanup_silent) /bin/rm -f $(GE2Pi2PAlg_check_install_runtimeactionstamp)

else

#GE2Pi2PAlg_check_install_runtime :: $(GE2Pi2PAlg_check_install_runtime_dependencies)
GE2Pi2PAlg_check_install_runtime ::
	$(silent) /cvmfs/bes3.ihep.ac.cn/bes3sw/Boss/7.0.9/BesPolicy/BesPolicy-01-05-05/cmt/bes_check_installations.sh -files= -s=../share *.txt   -installdir=/besfs5/groups/jpsi/jpsigroup/user/hujingguang/7.0.9/workarea-7.0.9/InstallArea/share

endif

install ::
uninstall ::

#-- end of cmt_action_runner_header -----------------
#-- start of cleanup_header --------------

clean :: GE2Pi2PAlg_check_install_runtimeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(GE2Pi2PAlg_check_install_runtime.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

GE2Pi2PAlg_check_install_runtimeclean ::
#-- end of cleanup_header ---------------
