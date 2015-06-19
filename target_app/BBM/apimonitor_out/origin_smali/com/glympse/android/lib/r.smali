.class Lcom/glympse/android/lib/r;
.super Ljava/lang/Object;
.source "ApplicationsManager.java"

# interfaces
.implements Lcom/glympse/android/lib/GApplicationsManagerPrivate;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private hC:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GApplication;",
            ">;"
        }
    .end annotation
.end field

.field private hD:Lcom/glympse/android/hal/GInvocationAgent;

.field private hE:Lcom/glympse/android/lib/CommonSink;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/glympse/android/lib/CommonSink;

    const-string v1, "Ticket"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glympse/android/lib/r;->hE:Lcom/glympse/android/lib/CommonSink;

    return-void
.end method

.method private a(Lcom/glympse/android/lib/GApplicationPrivate;Lcom/glympse/android/api/GTicket;Lcom/glympse/android/lib/GInvitePrivate;)Lcom/glympse/android/hal/GIntent;
    .registers 13

    invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createIntent()Lcom/glympse/android/hal/GIntent;

    move-result-object v2

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchAction()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/glympse/android/hal/GIntent;->setAction(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchPackage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/glympse/android/hal/GIntent;->setPackage(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchClassName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/glympse/android/hal/GIntent;->setClassName(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/glympse/android/hal/GIntent;->setType(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchFlags()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/glympse/android/hal/GIntent;->setFlags(I)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchArguments()Lcom/glympse/android/core/GArray;

    move-result-object v3

    invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_31
    if-ge v1, v4, :cond_8c

    invoke-interface {v3, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GMethodArgument;

    invoke-interface {v0}, Lcom/glympse/android/lib/GMethodArgument;->getType()I

    move-result v5

    invoke-interface {v0}, Lcom/glympse/android/lib/GMethodArgument;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lcom/glympse/android/lib/GMethodArgument;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_54

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_54

    packed-switch v5, :pswitch_data_8e

    :cond_54
    :goto_54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    :pswitch_58
    invoke-direct {p0, v0, p2, p3}, Lcom/glympse/android/lib/r;->a(Ljava/lang/String;Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v6, v0}, Lcom/glympse/android/hal/GIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :pswitch_60
    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v0, v7

    invoke-interface {v2, v6, v0}, Lcom/glympse/android/hal/GIntent;->putExtra(Ljava/lang/String;I)V

    goto :goto_54

    :pswitch_69
    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-interface {v2, v6, v7, v8}, Lcom/glympse/android/hal/GIntent;->putExtra(Ljava/lang/String;J)V

    goto :goto_54

    :pswitch_71
    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->toDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v0, v7

    invoke-interface {v2, v6, v0}, Lcom/glympse/android/hal/GIntent;->putExtra(Ljava/lang/String;F)V

    goto :goto_54

    :pswitch_7a
    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->toDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-interface {v2, v6, v7, v8}, Lcom/glympse/android/hal/GIntent;->putExtra(Ljava/lang/String;D)V

    goto :goto_54

    :pswitch_82
    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v2, v6, v0}, Lcom/glympse/android/hal/GIntent;->putExtra(Ljava/lang/String;Z)V

    goto :goto_54

    :cond_8c
    return-object v2

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_58
        :pswitch_60
        :pswitch_69
        :pswitch_71
        :pswitch_7a
        :pswitch_82
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)Ljava/lang/String;
    .registers 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2f

    const-string v0, "%MESSAGE%"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/glympse/android/api/GTicket;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/glympse/android/lib/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%GLY_ARGS%"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_2f

    iget-object v0, p0, Lcom/glympse/android/lib/r;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v2, 0x26

    move-object v3, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/glympse/android/lib/UrlGenerator;->generateReturnUri(Lcom/glympse/android/api/GGlympse;ZCLcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%GLY_ARGS%"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2f
    const-string v0, "%TYPE%"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/glympse/android/api/GInvite;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/glympse/android/lib/ej;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%SUBTYPE%"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lcom/glympse/android/api/GInvite;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%NAME%"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lcom/glympse/android/api/GInvite;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%ADDRESS%"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lcom/glympse/android/api/GInvite;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%CODE%"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%URL%"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lcom/glympse/android/api/GInvite;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%TEXT%"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lcom/glympse/android/api/GInvite;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/glympse/android/lib/GPerson;)Ljava/lang/String;
    .registers 6

    const-string v0, "%PERSON_ID%"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/glympse/android/lib/GPerson;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/glympse/android/lib/GApplicationPrivate;Lcom/glympse/android/api/GTicket;Lcom/glympse/android/lib/GInvitePrivate;)Lcom/glympse/android/hal/GIntent;
    .registers 8

    const/4 v1, 0x0

    invoke-interface {p3}, Lcom/glympse/android/lib/GInvitePrivate;->getPerson()Lcom/glympse/android/lib/GPerson;

    move-result-object v2

    if-eqz v2, :cond_55

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchUriDirect()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-direct {p0, v0, v2}, Lcom/glympse/android/lib/r;->a(Ljava/lang/String;Lcom/glympse/android/lib/GPerson;)Ljava/lang/String;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    :goto_25
    return-object v1

    :cond_26
    invoke-direct {p0, v0, p2, p3}, Lcom/glympse/android/lib/r;->a(Ljava/lang/String;Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createIntent()Lcom/glympse/android/hal/GIntent;

    move-result-object v1

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/hal/GIntent;->setAction(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/hal/GIntent;->setPackage(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/hal/GIntent;->setClassName(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/hal/GIntent;->setType(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchFlags()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/glympse/android/hal/GIntent;->setFlags(I)V

    invoke-interface {v1, v0}, Lcom/glympse/android/hal/GIntent;->setData(Ljava/lang/String;)V

    goto :goto_25

    :cond_55
    move-object v0, v1

    goto :goto_15
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k(Ljava/lang/String;)Lcom/glympse/android/api/GApplication;
    .registers 7

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/glympse/android/lib/r;->hC:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_11
    if-ge v2, v3, :cond_29

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hC:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GApplication;

    invoke-interface {v0}, Lcom/glympse/android/api/GApplication;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_29
    move-object v0, v1

    goto :goto_8
.end method


# virtual methods
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public associateContext(JLjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V

    return-void
.end method

.method public canInstall(Lcom/glympse/android/api/GApplication;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/r;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v1, :cond_7

    if-nez p1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    check-cast p1, Lcom/glympse/android/lib/GApplicationPrivate;

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getInstallPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getInstallUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1e
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public canSend(Lcom/glympse/android/api/GInvite;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/r;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v1, :cond_7

    if-nez p1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-interface {p1}, Lcom/glympse/android/api/GInvite;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/glympse/android/lib/r;->k(Ljava/lang/String;)Lcom/glympse/android/api/GApplication;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lcom/glympse/android/lib/r;->isInstalled(Lcom/glympse/android/api/GApplication;)Z

    move-result v0

    goto :goto_7
.end method

.method public clearContext(J)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V

    return-void
.end method

.method public createApplicationPerson(Lcom/glympse/android/lib/GInvitePrivate;)Lcom/glympse/android/lib/GPerson;
    .registers 5

    invoke-interface {p1}, Lcom/glympse/android/lib/GInvitePrivate;->getPerson()Lcom/glympse/android/lib/GPerson;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-interface {p1}, Lcom/glympse/android/lib/GInvitePrivate;->getSubtype()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/r;->k(Ljava/lang/String;)Lcom/glympse/android/api/GApplication;

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v0, 0x0

    goto :goto_6

    :cond_13
    new-instance v0, Lcom/glympse/android/lib/PersonLocal;

    invoke-interface {v1}, Lcom/glympse/android/api/GApplication;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/glympse/android/api/GApplication;->getIcon()Lcom/glympse/android/api/GImage;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/glympse/android/lib/PersonLocal;-><init>(Ljava/lang/String;Lcom/glympse/android/api/GImage;)V

    goto :goto_6
.end method

.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V

    return-void
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/api/GEventSink;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public getApplications()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GApplication;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hC:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public getContext(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContextKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getListeners()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GEventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public hasContext(J)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z

    move-result v0

    return v0
.end method

.method public install(Lcom/glympse/android/api/GApplication;)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/r;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    check-cast p1, Lcom/glympse/android/lib/GApplicationPrivate;

    invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createIntent()Lcom/glympse/android/hal/GIntent;

    move-result-object v0

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getInstallPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GIntent;->setPackage(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getInstallUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GIntent;->setData(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/lib/r;->hD:Lcom/glympse/android/hal/GInvocationAgent;

    invoke-interface {v1, v0}, Lcom/glympse/android/hal/GInvocationAgent;->install(Lcom/glympse/android/hal/GIntent;)Z

    move-result v0

    goto :goto_7
.end method

.method public isInstalled(Lcom/glympse/android/api/GApplication;)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/r;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    check-cast p1, Lcom/glympse/android/lib/GApplicationPrivate;

    invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createIntent()Lcom/glympse/android/hal/GIntent;

    move-result-object v0

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getInstallPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GIntent;->setPackage(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GApplicationPrivate;->getInstallScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GIntent;->setData(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/lib/r;->hD:Lcom/glympse/android/hal/GInvocationAgent;

    invoke-interface {v1, v0}, Lcom/glympse/android/hal/GInvocationAgent;->isInstalled(Lcom/glympse/android/hal/GIntent;)Z

    move-result v0

    goto :goto_7
.end method

.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public send(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)Z
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/r;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    invoke-interface {p2}, Lcom/glympse/android/api/GInvite;->getSubtype()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/r;->k(Ljava/lang/String;)Lcom/glympse/android/api/GApplication;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GApplicationPrivate;

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_6

    :cond_15
    invoke-interface {v0}, Lcom/glympse/android/lib/GApplicationPrivate;->getLaunchMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    check-cast p2, Lcom/glympse/android/lib/GInvitePrivate;

    invoke-direct {p0, v0, p1, p2}, Lcom/glympse/android/lib/r;->a(Lcom/glympse/android/lib/GApplicationPrivate;Lcom/glympse/android/api/GTicket;Lcom/glympse/android/lib/GInvitePrivate;)Lcom/glympse/android/hal/GIntent;

    move-result-object v2

    if-nez v2, :cond_2b

    move v0, v1

    goto :goto_6

    :cond_2b
    iget-object v1, p0, Lcom/glympse/android/lib/r;->hD:Lcom/glympse/android/hal/GInvocationAgent;

    invoke-interface {v1, v2}, Lcom/glympse/android/hal/GInvocationAgent;->startActivity(Lcom/glympse/android/hal/GIntent;)Z

    move-result v1

    :cond_31
    :goto_31
    if-eqz v1, :cond_3c

    iget-object v2, p0, Lcom/glympse/android/lib/r;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v3, 0xe

    const/16 v4, 0x8

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/glympse/android/lib/r;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_3c
    move v0, v1

    goto :goto_6

    :cond_3e
    const-string v3, "broadcast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    check-cast p2, Lcom/glympse/android/lib/GInvitePrivate;

    invoke-direct {p0, v0, p1, p2}, Lcom/glympse/android/lib/r;->a(Lcom/glympse/android/lib/GApplicationPrivate;Lcom/glympse/android/api/GTicket;Lcom/glympse/android/lib/GInvitePrivate;)Lcom/glympse/android/hal/GIntent;

    move-result-object v2

    if-nez v2, :cond_50

    move v0, v1

    goto :goto_6

    :cond_50
    iget-object v1, p0, Lcom/glympse/android/lib/r;->hD:Lcom/glympse/android/hal/GInvocationAgent;

    invoke-interface {v1, v2}, Lcom/glympse/android/hal/GInvocationAgent;->sendBroadcast(Lcom/glympse/android/hal/GIntent;)Z

    move-result v1

    goto :goto_31

    :cond_57
    const-string v3, "uri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    check-cast p2, Lcom/glympse/android/lib/GInvitePrivate;

    invoke-direct {p0, v0, p1, p2}, Lcom/glympse/android/lib/r;->b(Lcom/glympse/android/lib/GApplicationPrivate;Lcom/glympse/android/api/GTicket;Lcom/glympse/android/lib/GInvitePrivate;)Lcom/glympse/android/hal/GIntent;

    move-result-object v2

    if-nez v2, :cond_69

    move v0, v1

    goto :goto_6

    :cond_69
    iget-object v1, p0, Lcom/glympse/android/lib/r;->hD:Lcom/glympse/android/hal/GInvocationAgent;

    invoke-interface {v1, v2}, Lcom/glympse/android/hal/GInvocationAgent;->startActivity(Lcom/glympse/android/hal/GIntent;)Z

    move-result v1

    goto :goto_31
.end method

.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 8

    invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->isApplicationsManagerEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/glympse/android/lib/r;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/r;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createInvocationAgent(Landroid/content/Context;)Lcom/glympse/android/hal/GInvocationAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/r;->hD:Lcom/glympse/android/hal/GInvocationAgent;

    iget-object v0, p0, Lcom/glympse/android/lib/r;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-static {v0}, Lcom/glympse/android/lib/q;->a(Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/hal/GVector;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/r;->hC:Lcom/glympse/android/hal/GVector;

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hC:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_29
    if-ge v1, v2, :cond_6

    iget-object v0, p0, Lcom/glympse/android/lib/r;->hC:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GApplication;

    iget-object v3, p0, Lcom/glympse/android/lib/r;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v4, 0xe

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/glympse/android/lib/r;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/r;->hC:Lcom/glympse/android/hal/GVector;

    iput-object v0, p0, Lcom/glympse/android/lib/r;->hD:Lcom/glympse/android/hal/GInvocationAgent;

    iput-object v0, p0, Lcom/glympse/android/lib/r;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method
