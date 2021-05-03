
#Below sourcecode gives the breif idea about how the implementation of quasi and non-quasi is performed for thsi research. 

install.packages("MDPtoolbox")
 
library(MDPtoolbox)

#matrix values are as per rewards and penalties, details are mentioned in paper.

case1=matrix(c( 1, +10, -100, -100,
              +10, +1, -100, -100,
              +100, +100, -1, -10,
             +100, +100, -10, -1),
          nrow=4,ncol=4,byrow=TRUE)

case2=matrix(c( +1,-100, +10, -100,
             +100, -1, +100, -10,
              +10, -100, +1, -100,
              +100, -10, +100, -1),
          nrow=4,ncol=4,byrow=TRUE)


case3=matrix(c( -1,+100, -10, +100,
             -100, +1, +100, +10,
             -10, +100, -1, +100,
             -100, +10, -100, +1),
          nrow=4,ncol=4,byrow=TRUE)

case4=matrix(c( -1,-10, +100, +100,
             -10, -1, +100, +100,
              -100, -100, +1, +10,
            -100, -100, +10, +1),
         nrow=4,ncol=4,byrow=TRUE)


case5=matrix(c( +1,-100, -100, +10,
            +100, -1, -10, +100,
            +100, 0, -1, +100,
             +10, -100, -100, +1),
           nrow=4,ncol=4,byrow=TRUE)

case6=matrix(c( -1,+100, +100, -10,
         -100, +1, +10, -100,
             -100, +10, +1, +100,
            -10, +100, +100, -1),
         nrow=4,ncol=4,byrow=TRUE)



Actions=list(case1=case1, case2=case2, case3=case3, case4=case4)


Rewards=matrix(c( -10, -10, -10, -10,
                  -10, -10, -10, -10,
                -10, -10, -10, -10,
                 10, 10, 10, 10),
            nrow=4,ncol=4,byrow=TRUE)


solver=mdp_policy_iteration(P=Actions, R=Rewards, discount = 0.5)

#kindly go through with details of MDPtoolbox.pdf package for further information 

