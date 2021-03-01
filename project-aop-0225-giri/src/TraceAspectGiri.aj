public aspect TraceAspectGiri {
   pointcut classToTrace(): within(*App);

   pointcut methodToTrace():  classToTrace() &&  execution(String getName(..));

   before(): methodToTrace() {
      System.out.println("[BGN] " + thisJoinPointStaticPart.getSignature() + ", " +
            thisJoinPointStaticPart.getSourceLocation().getLine());
   }

   after(): methodToTrace() {
      System.out.println("[END] " + thisJoinPointStaticPart.getSourceLocation().getFileName());
   }
}
