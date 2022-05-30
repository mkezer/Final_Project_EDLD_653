# items
insecure_att <- c("as1rc", "as2", "as3rc", "as4rc", "as5")
avoid_att <- c("as6", "as7", "as8", "as9")
anx_att <- c("as10", "as11", "as12rc", "as13")

authenticity <- c("auth1", "auth2rc", "auth3rc", "auth4rc", 
                  "auth5rc", "auth6rc", "auth7rc", "auth8", 
                  "auth9", "auth10rc", "auth11", "auth12rc")

masking <- c("mask1", "mask2", "mask3", "mask4", "mask5", 
             "mask6", "mask7", "mask8", "mask9", "mask10rc", 
             "mask11", "mask12", "mask13")

ntb <- c("ntb1rc", "ntb2", "ntb3rc", "ntb4", "ntb5", 
         "ntb6", "ntb7rc", "ntb8", "ntb9", "ntb10")

loneliness <- c("ucla1rc", "ucla2", "ucla3", "ucla4", "ucla5rc", 
                "ucla6rc", "ucla7", "ucla8", "ucla9rc", "ucla10rc", 
                "ucla11", "ucla12", "ucla13", "ucla14", "ucla15rc", 
                "ucla16rc", "ucla17", "ucla18", "ucla19rc", "ucla20rc")

fne <- paste0("fne", 1:12)

pos_express <- c('beq1', 'beq4', 'beq6', 'beq10')
neg_express <- c('beq3rc', 'beq5', 'beq8rc', 'beq9rc', 'beq13', 'beq16')
impulse_str <- c('beq2', 'beq7', 'beq11', 'beq12', 'beq14', 'beq15')

suppression <- c('erq2', 'erq4', 'erq6', 'erq9')
reappraisal <- c('erq1', 'erq3', 'erq5', 'erq7', 'erq8', 'erq10')

s_esteem <- c('rse1', 'rse2', 'rse3rc', 'rse4', 'rse5rc', 
              'rse6', 'rse7', 'rse8rc', 'rse9rc', 'rse10rc')

swb <- paste0('swb', 1:5)

sense_of_power <- c('pow1', 'pow2rc', 'pow3', 'pow4rc', 
                    'pow5', 'pow6rc', 'pow7rc', 'pow8')

si_anx <- paste0('sias', 1:6)
s_phobia <- paste0('sias', 7:12)

per_open <- c('perceiver_trait13', 'perceiver_trait22')
per_cons <- c('perceiver_trait6', 'perceiver_trait15rc',
              'perceiver_trait19', 'perceiver_trait26')
per_extra <- c('perceiver_trait1', 'perceiver_trait3', 'perceiver_trait7',
               'perceiver_trait8rc', 'perceiver_trait9', 
               'perceiver_trait21rc', 'perceiver_trait25rc')
per_agre <- c('perceiver_trait10rc', 'perceiver_trait14',
              'perceiver_trait18rc', 'perceiver_trait23')
per_neur <- c('perceiver_trait4rc', 'perceiver_trait12', 
              'perceiver_trait16rc', 'perceiver_trait20')
per_intel <- c('perceiver_trait2', 'perceiver_trait17', 'perceiver_trait24')
per_trust <- c('perceiver_trait5', 'perceiver_trait11')

## lists
item_list <- list(insecure_att, avoid_att, anx_att, authenticity,
                  masking, ntb, loneliness, fne, pos_express,
                  neg_express, impulse_str, suppression, reappraisal,
                  s_esteem, swb, sense_of_power, si_anx, s_phobia,
                  per_open, per_cons, per_extra, per_agre, per_neur,
                  per_intel, per_trust)

variable_names <- list("Insecure Attachment", 
                       "Avoidant Attachment",
                       "Anxious Attachment",
                       "Authenticity",
                       "Masking",
                       "Need to Belong",
                       "Loneliness",
                       "Fear of Negative Evaluation",
                       'Positive Expressivity',
                       'Negative Expressivity',
                       'Impulse Strength',
                       'Supression',
                       'Reappraisal',
                       'Self-Esteem',
                       'Satisfaction with Life',
                       'Sense of Power',
                       'Social Interaction Anxiety',
                       'Social Phobia',
                       'Perceiver Openness to Experience',
                       'Perceiver Conscientiousness',
                       'Perceiver Extraversion',
                       'Perceiver Agreeableness',
                       'Perceiver Neuroticism',
                       'Perceiver Intelligence',
                       'Perceiver Trustworthiness')
