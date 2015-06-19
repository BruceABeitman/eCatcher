.class public Ljavax/mail/internet/AddressException;
.super Ljavax/mail/internet/ParseException;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x7ec48f3eab5368f0L
.field protected pos:I
.field protected ref:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljavax/mail/internet/ParseException;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;
const/4 v0, -0x1
iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;
const/4 v0, -0x1
iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;
const/4 v0, -0x1
iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I
iput-object p2, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
.registers 5
invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;
const/4 v0, -0x1
iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I
iput-object p2, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;
iput p3, p0, Ljavax/mail/internet/AddressException;->pos:I
return-void
.end method
.method public getPos()I
.registers 2
iget v0, p0, Ljavax/mail/internet/AddressException;->pos:I
return v0
.end method
.method public getRef()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
invoke-super {p0}, Ljavax/mail/internet/ParseException;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;
if-nez v1, :cond_9
:goto_8
:cond_8
return-object v0
:cond_9
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v0, " in string ``"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget v1, p0, Ljavax/mail/internet/AddressException;->pos:I
if-ltz v1, :cond_8
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v0, " at position "
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Ljavax/mail/internet/AddressException;->pos:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method