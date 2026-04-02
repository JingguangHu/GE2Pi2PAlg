# echo "setup GE2Pi2PAlg GE2Pi2PAlg-00-00-01 in /besfs5/groups/jpsi/jpsigroup/user/hujingguang/7.0.9/workarea-7.0.9"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25
endif
source ${CMTROOT}/mgr/setup.csh
set cmtGE2Pi2PAlgtempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set cmtGE2Pi2PAlgtempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt setup -csh -pack=GE2Pi2PAlg -version=GE2Pi2PAlg-00-00-01 -path=/besfs5/groups/jpsi/jpsigroup/user/hujingguang/7.0.9/workarea-7.0.9  -no_cleanup $* >${cmtGE2Pi2PAlgtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/mgr/cmt setup -csh -pack=GE2Pi2PAlg -version=GE2Pi2PAlg-00-00-01 -path=/besfs5/groups/jpsi/jpsigroup/user/hujingguang/7.0.9/workarea-7.0.9  -no_cleanup $* >${cmtGE2Pi2PAlgtempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtGE2Pi2PAlgtempfile}
  unset cmtGE2Pi2PAlgtempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtGE2Pi2PAlgtempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtGE2Pi2PAlgtempfile}
unset cmtGE2Pi2PAlgtempfile
exit $cmtsetupstatus

