.class final Lcom/ibm/icu/impl/ICUData$3;
.super Ljava/lang/Object;
.source "ICUData.java"
.implements Ljava/security/PrivilegedAction;
.field final synthetic val$loader:Ljava/lang/ClassLoader;
.field final synthetic val$resourceName:Ljava/lang/String;
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/ibm/icu/impl/ICUData$3;->val$loader:Ljava/lang/ClassLoader;
iput-object p2, p0, Lcom/ibm/icu/impl/ICUData$3;->val$resourceName:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/ICUData$3;->val$loader:Ljava/lang/ClassLoader;
iget-object v1, p0, Lcom/ibm/icu/impl/ICUData$3;->val$resourceName:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method