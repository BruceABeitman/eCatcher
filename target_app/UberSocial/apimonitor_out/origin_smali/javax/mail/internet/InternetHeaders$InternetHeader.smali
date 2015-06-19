.class public final Ljavax/mail/internet/InternetHeaders$InternetHeader;
.super Ljavax/mail/Header;
.source "SourceFile"


# instance fields
.field line:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->name:Ljava/lang/String;

    :goto_15
    iput-object p1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    return-void

    :cond_18
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->name:Ljava/lang/String;

    goto :goto_15
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    :goto_20
    return-void

    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    goto :goto_20
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_d

    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    :goto_f
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1e

    :cond_17
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_1e
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_34

    const/16 v2, 0x9

    if-eq v1, v2, :cond_34

    const/16 v2, 0xd

    if-eq v1, v2, :cond_34

    const/16 v2, 0xa

    if-ne v1, v2, :cond_17

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method
