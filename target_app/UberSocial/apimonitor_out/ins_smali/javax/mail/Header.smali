.class public Ljavax/mail/Header;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected name:Ljava/lang/String;
.field protected value:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Ljavax/mail/Header;->name:Ljava/lang/String;
iput-object p2, p0, Ljavax/mail/Header;->value:Ljava/lang/String;
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/mail/Header;->name:Ljava/lang/String;
return-object v0
.end method
.method public getValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/mail/Header;->value:Ljava/lang/String;
return-object v0
.end method