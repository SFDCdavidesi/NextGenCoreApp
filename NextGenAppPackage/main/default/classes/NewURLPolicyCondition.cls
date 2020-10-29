global class NewURLPolicyCondition implements TxnSecurity.PolicyCondition {

 public boolean evaluate(TxnSecurity.Event e) {
/*AggregateResult[] results = [SELECT ApiType,platform FROM LoginHistory WHERE UserId = :e.userId AND LoginTime = LAST_N_DAYS:7 GROUP BY ApiType];

  if(!results.isEmpty() && results.size() > 1) {
    
   return true;
 }

 return false; */
     LoginHistory eObj = [SELECT Platform FROM LoginHistory WHERE Id = :e.data.get('LoginHistoryId')];
  if(eObj.Platform == 'besupercarefulwiththis') {
   return true;
 }

 return false; 
}

 }