.class public Ljavax/mail/internet/HeaderTokenizer$Token;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final ATOM:I = -0x1
.field public static final COMMENT:I = -0x3
.field public static final EOF:I = -0x4
.field public static final QUOTEDSTRING:I = -0x2
.field private type:I
.field private value:Ljava/lang/String;
.method public constructor <init>(ILjava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Ljavax/mail/internet/HeaderTokenizer$Token;->type:I
iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer$Token;->value:Ljava/lang/String;
return-void
.end method
.method public getType()I
.registers 2
iget v0, p0, Ljavax/mail/internet/HeaderTokenizer$Token;->type:I
return v0
.end method
.method public getValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer$Token;->value:Ljava/lang/String;
return-object v0
.end method