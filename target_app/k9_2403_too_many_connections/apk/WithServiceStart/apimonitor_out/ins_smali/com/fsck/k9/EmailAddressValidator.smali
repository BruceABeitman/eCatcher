.class public Lcom/fsck/k9/EmailAddressValidator;
.super Ljava/lang/Object;
.source "EmailAddressValidator.java"
.implements Landroid/widget/AutoCompleteTextView$Validator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.registers 3
const-string v0, ""
return-object v0
.end method
.method public isValid(Ljava/lang/CharSequence;)Z
.registers 3
invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
move-result-object v0
array-length v0, v0
if-lez v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method