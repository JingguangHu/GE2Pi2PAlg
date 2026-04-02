# echo "setup GE2Pi2PAlg GE2Pi2PAlg-00-00-01 in /besfs5/groups/jpsi/jpsigroup/user/hujingguang/7.0.9/workarea-7.0.9"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtGE2Pi2PAlgtempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmtGE2Pi2PAlgtempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt setup -sh -pack=GE2Pi2PAlg -version=GE2Pi2PAlg-00-00-01 -path=/besfs5/groups/jpsi/jpsigroup/user/hujingguang/7.0.9/workarea-7.0.9  -no_cleanup $* >${cmtGE2Pi2PAlgtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt setup -sh -pack=GE2Pi2PAlg -version=GE2Pi2PAlg-00-00-01 -path=/besfs5/groups/jpsi/jpsigroup/user/hujingguang/7.0.9/workarea-7.0.9  -no_cleanup $* >${cmtGE2Pi2PAlgtempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtGE2Pi2PAlgtempfile}
  unset cmtGE2Pi2PAlgtempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtGE2Pi2PAlgtempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtGE2Pi2PAlgtempfile}
unset cmtGE2Pi2PAlgtempfile
return $cmtsetupstatus

