.class  Lcom/ibm/icu/impl/ICUResourceBundle$1$2;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"
.implements Ljava/io/FilenameFilter;
.field final synthetic this$0:Lcom/ibm/icu/impl/ICUResourceBundle$1;
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundle$1;)V
.registers 2
iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$1$2;->this$0:Lcom/ibm/icu/impl/ICUResourceBundle$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 4
const-string v0, ".res"
invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
const-string v0, "res_index.res"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method