.class final Lcom/ibm/icu/impl/ICUData$1;
.super Ljava/lang/Object;
.source "ICUData.java"
.implements Ljava/security/PrivilegedAction;
.field final synthetic val$resourceName:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/ibm/icu/impl/ICUData$1;->val$resourceName:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()Ljava/lang/Object;
.registers 3
const-class v0, Lcom/ibm/icu/impl/ICUData;
iget-object v1, p0, Lcom/ibm/icu/impl/ICUData$1;->val$resourceName:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
return-object v0
.end method