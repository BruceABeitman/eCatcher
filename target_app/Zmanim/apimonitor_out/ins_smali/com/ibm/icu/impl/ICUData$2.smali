.class final Lcom/ibm/icu/impl/ICUData$2;
.super Ljava/lang/Object;
.source "ICUData.java"
.implements Ljava/security/PrivilegedAction;
.field final synthetic val$resourceName:Ljava/lang/String;
.field final synthetic val$root:Ljava/lang/Class;
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/ibm/icu/impl/ICUData$2;->val$root:Ljava/lang/Class;
iput-object p2, p0, Lcom/ibm/icu/impl/ICUData$2;->val$resourceName:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/ICUData$2;->val$root:Ljava/lang/Class;
iget-object v1, p0, Lcom/ibm/icu/impl/ICUData$2;->val$resourceName:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method