.class public Lcom/flurry/sdk/da;
.super Lcom/flurry/sdk/db;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dn$a;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field private static final h:Ljava/lang/String;


# instance fields
.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/flurry/sdk/da;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/da;->h:Ljava/lang/String;

    const-string v0, "http://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/sdk/da;->b:Ljava/lang/String;

    const-string v0, "https://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/da;-><init>(Lcom/flurry/sdk/db$a;)V

    return-void
.end method

.method constructor <init>(Lcom/flurry/sdk/db$a;)V
    .registers 4

    const-string v0, "Analytics"

    const-class v1, Lcom/flurry/sdk/da;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/db;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AnalyticsData_"

    iput-object v0, p0, Lcom/flurry/sdk/da;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/da;->g()V

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/da;->a(Lcom/flurry/sdk/db$a;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/flurry/sdk/da;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_12

    const-string v0, ".do"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/da;->h:Ljava/lang/String;

    const-string v2, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_12
    sput-object p1, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    return-void
.end method

.method private g()V
    .registers 6

    const/4 v4, 0x4

    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v1

    const-string v0, "UseHttps"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/da;->i:Z

    const-string v0, "UseHttps"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V

    sget-object v0, Lcom/flurry/sdk/da;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, UseHttps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/sdk/da;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ReportUrl"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "ReportUrl"

    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/da;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/flurry/sdk/da;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, ReportUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-boolean v0, p0, Lcom/flurry/sdk/da;->i:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/flurry/sdk/da;->b:Ljava/lang/String;

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    const/4 v3, 0x4

    const-string v0, "UseHttps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/da;->i:Z

    sget-object v0, Lcom/flurry/sdk/da;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, UseHttps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/sdk/da;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void

    :cond_2c
    const-string v0, "ReportUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/flurry/sdk/da;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/da;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, ReportUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_52
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/da;->h:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Lcom/flurry/sdk/da$2;

    invoke-direct {v0, p0, p3}, Lcom/flurry/sdk/da$2;-><init>(Lcom/flurry/sdk/da;I)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/da;->a(Lcom/flurry/sdk/fc;)V

    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/db;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected a([BLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p0}, Lcom/flurry/sdk/da;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/da;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FlurryDataSender: start upload data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/flurry/sdk/ei;

    invoke-direct {v1}, Lcom/flurry/sdk/ei;-><init>()V

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ek$a;)V

    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/et;

    invoke-direct {v0}, Lcom/flurry/sdk/et;-><init>()V

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/eu;)V

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/ei;->a(Ljava/lang/Object;)V

    new-instance v0, Lcom/flurry/sdk/da$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/flurry/sdk/da$1;-><init>(Lcom/flurry/sdk/da;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei$a;)V

    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V

    return-void
.end method
