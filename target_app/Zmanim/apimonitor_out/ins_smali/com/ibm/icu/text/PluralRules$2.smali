.class final Lcom/ibm/icu/text/PluralRules$2;
.super Ljava/lang/Object;
.source "PluralRules.java"
.implements Lcom/ibm/icu/text/PluralRules$Rule;
.field private static final serialVersionUID:J = -0x4eca8753bada1885L
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public appliesTo(D)Z
.registers 4
const/4 v0, 0x1
return v0
.end method
.method public getKeyword()Ljava/lang/String;
.registers 2
const-string v0, "other"
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
const-string v0, "(other)"
return-object v0
.end method
.method public updateRepeatLimit(I)I
.registers 2
return p1
.end method