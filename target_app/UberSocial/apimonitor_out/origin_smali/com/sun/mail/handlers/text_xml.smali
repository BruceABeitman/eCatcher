.class public Lcom/sun/mail/handlers/text_xml;
.super Lcom/sun/mail/handlers/text_plain;
.source "SourceFile"


# static fields
.field private static myDF:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Ljava/lang/String;

    const-string v2, "text/xml"

    const-string v3, "XML String"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/handlers/text_xml;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sun/mail/handlers/text_plain;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDF()Ljavax/activation/ActivationDataFlavor;
    .registers 2

    sget-object v0, Lcom/sun/mail/handlers/text_xml;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-object v0
.end method
