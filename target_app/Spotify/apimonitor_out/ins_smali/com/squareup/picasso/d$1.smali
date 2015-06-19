.class final Lcom/squareup/picasso/d$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V
return-void
.end method
.method protected final synthetic initialValue()Ljava/lang/Object;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Picasso-"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
return-object v0
.end method