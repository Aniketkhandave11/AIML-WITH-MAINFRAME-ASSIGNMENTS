//SORTJOB  JOB (ACCT),'SORT PS FILE',CLASS=A,MSGCLASS=A
//STEP1    EXEC PGM=SORT
//SORTIN   DD DSN=Z67419.JCL.SORTIN,DISP=SHR
//SORTOUT  DD DSN=Z67419.JCL.SORTOUT,DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,1),UNIT=SYSDA,LRECL=80,RECFM=FB
//SYSOUT   DD SYSOUT=*
//SYSIN    DD *
  SORT FIELDS=(13,8,CH,A)  /* Sort by primary key in ascending order */
  SUM FIELDS=NONE          /* Remove exact duplicate records */
/*
