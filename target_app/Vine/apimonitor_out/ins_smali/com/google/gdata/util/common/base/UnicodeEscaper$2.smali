.class final Lcom/google/gdata/util/common/base/UnicodeEscaper$2;
.super Ljava/lang/ThreadLocal;
.source "UnicodeEscaper.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V
return-void
.end method
.method protected bridge synthetic initialValue()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/gdata/util/common/base/UnicodeEscaper$2;->initialValue()[C
move-result-object v0
return-object v0
.end method
.method protected initialValue()[C
.registers 2
const/16 v0, 0x400
new-array v0, v0, [C
return-object v0
.end method