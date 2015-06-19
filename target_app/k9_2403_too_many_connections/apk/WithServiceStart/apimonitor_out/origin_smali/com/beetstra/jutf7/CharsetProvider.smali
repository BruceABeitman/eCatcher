.class public Lcom/beetstra/jutf7/CharsetProvider;
.super Ljava/nio/charset/spi/CharsetProvider;
.source "CharsetProvider.java"


# static fields
.field private static final UTF7_ALIASES:[Ljava/lang/String; = null

.field private static final UTF7_M_ALIASES:[Ljava/lang/String; = null

.field private static final UTF7_M_NAME:Ljava/lang/String; = "X-MODIFIED-UTF-7"

.field private static final UTF7_NAME:Ljava/lang/String; = "UTF-7"

.field private static final UTF7_O_ALIASES:[Ljava/lang/String; = null

.field private static final UTF7_O_NAME:Ljava/lang/String; = "X-UTF-7-OPTIONAL"


# instance fields
.field private charsets:Ljava/util/List;

.field private imap4charset:Ljava/nio/charset/Charset;

.field private utf7charset:Ljava/nio/charset/Charset;

.field private utf7oCharset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "UNICODE-1-1-UTF-7"

    aput-object v1, v0, v2

    const-string v1, "CSUNICODE11UTF7"

    aput-object v1, v0, v3

    const-string v1, "X-RFC2152"

    aput-object v1, v0, v4

    const-string v1, "X-RFC-2152"

    aput-object v1, v0, v5

    sput-object v0, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_ALIASES:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "X-RFC2152-OPTIONAL"

    aput-object v1, v0, v2

    const-string v1, "X-RFC-2152-OPTIONAL"

    aput-object v1, v0, v3

    sput-object v0, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_O_ALIASES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "X-IMAP-MODIFIED-UTF-7"

    aput-object v1, v0, v2

    const-string v1, "X-IMAP4-MODIFIED-UTF7"

    aput-object v1, v0, v3

    const-string v1, "X-IMAP4-MODIFIED-UTF-7"

    aput-object v1, v0, v4

    const-string v1, "X-RFC3501"

    aput-object v1, v0, v5

    const-string v1, "X-RFC-3501"

    aput-object v1, v0, v6

    sput-object v0, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_M_ALIASES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/nio/charset/spi/CharsetProvider;-><init>()V

    new-instance v0, Lcom/beetstra/jutf7/UTF7Charset;

    const-string v1, "UTF-7"

    sget-object v2, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_ALIASES:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/beetstra/jutf7/UTF7Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/beetstra/jutf7/CharsetProvider;->utf7charset:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/beetstra/jutf7/UTF7Charset;

    const-string v1, "X-UTF-7-OPTIONAL"

    sget-object v2, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_O_ALIASES:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4}, Lcom/beetstra/jutf7/UTF7Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/beetstra/jutf7/CharsetProvider;->utf7oCharset:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/beetstra/jutf7/ModifiedUTF7Charset;

    const-string v1, "X-MODIFIED-UTF-7"

    sget-object v2, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_M_ALIASES:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/beetstra/jutf7/ModifiedUTF7Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/beetstra/jutf7/CharsetProvider;->imap4charset:Ljava/nio/charset/Charset;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/beetstra/jutf7/CharsetProvider;->utf7charset:Ljava/nio/charset/Charset;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/beetstra/jutf7/CharsetProvider;->imap4charset:Ljava/nio/charset/Charset;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/beetstra/jutf7/CharsetProvider;->utf7oCharset:Ljava/nio/charset/Charset;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/beetstra/jutf7/CharsetProvider;->charsets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/beetstra/jutf7/CharsetProvider;->charsets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v2, v0

    :goto_21
    return-object v2

    :cond_22
    iget-object v2, p0, Lcom/beetstra/jutf7/CharsetProvider;->charsets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    move-object v2, v0

    goto :goto_21

    :cond_40
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public charsets()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/beetstra/jutf7/CharsetProvider;->charsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
