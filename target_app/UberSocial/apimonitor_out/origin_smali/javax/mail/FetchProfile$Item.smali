.class public Ljavax/mail/FetchProfile$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

.field public static final ENVELOPE:Ljavax/mail/FetchProfile$Item;

.field public static final FLAGS:Ljavax/mail/FetchProfile$Item;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljavax/mail/FetchProfile$Item;

    const-string v1, "ENVELOPE"

    invoke-direct {v0, v1}, Ljavax/mail/FetchProfile$Item;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    new-instance v0, Ljavax/mail/FetchProfile$Item;

    const-string v1, "CONTENT_INFO"

    invoke-direct {v0, v1}, Ljavax/mail/FetchProfile$Item;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    new-instance v0, Ljavax/mail/FetchProfile$Item;

    const-string v1, "FLAGS"

    invoke-direct {v0, v1}, Ljavax/mail/FetchProfile$Item;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/FetchProfile$Item;->name:Ljava/lang/String;

    return-void
.end method
