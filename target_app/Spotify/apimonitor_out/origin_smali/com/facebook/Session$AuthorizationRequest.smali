.class public Lcom/facebook/Session$AuthorizationRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applicationId:Ljava/lang/String;

.field private final authId:Ljava/lang/String;

.field private defaultAudience:Lcom/facebook/SessionDefaultAudience;

.field private isLegacy:Z

.field private final loggingExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loginBehavior:Lcom/facebook/SessionLoginBehavior;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestCode:I

.field private final startActivityDelegate:Lcom/facebook/ad;

.field private statusCallback:Lcom/facebook/ae;

.field private validateSameFbidAsToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/SessionLoginBehavior;->a:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    const v0, 0xface

    iput v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    sget-object v0, Lcom/facebook/SessionDefaultAudience;->c:Lcom/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/Session$AuthorizationRequest$1;-><init>(Lcom/facebook/Session$AuthorizationRequest;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/ad;

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/SessionLoginBehavior;->a:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    const v0, 0xface

    iput v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    sget-object v0, Lcom/facebook/SessionDefaultAudience;->c:Lcom/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/Session$AuthorizationRequest$2;-><init>(Lcom/facebook/Session$AuthorizationRequest;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/ad;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/SessionLoginBehavior;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/SessionLoginBehavior;->a:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    const v0, 0xface

    iput v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    sget-object v0, Lcom/facebook/SessionDefaultAudience;->c:Lcom/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$3;

    invoke-direct {v0, p0}, Lcom/facebook/Session$AuthorizationRequest$3;-><init>(Lcom/facebook/Session$AuthorizationRequest;)V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/ad;

    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    iput p2, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    iput-object p3, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    invoke-static {p4}, Lcom/facebook/SessionDefaultAudience;->valueOf(Ljava/lang/String;)Lcom/facebook/SessionDefaultAudience;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    iput-boolean p5, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    iput-object p6, p0, Lcom/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    iput-object p7, p0, Lcom/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;B)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/Session$AuthorizationRequest;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionLoginBehavior;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/Session$AuthorizationRequest;)I
    .registers 2

    iget v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionDefaultAudience;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/ad;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/ad;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(I)Lcom/facebook/Session$AuthorizationRequest;
    .registers 2

    if-ltz p1, :cond_4

    iput p1, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    :cond_4
    return-object p0
.end method

.method a(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$AuthorizationRequest;
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    :cond_4
    return-object p0
.end method

.method a(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    :cond_4
    return-object p0
.end method

.method a(Lcom/facebook/ae;)Lcom/facebook/Session$AuthorizationRequest;
    .registers 2

    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->statusCallback:Lcom/facebook/ae;

    return-object p0
.end method

.method a(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/Session$AuthorizationRequest;"
        }
    .end annotation

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    :cond_4
    return-object p0
.end method

.method final a()Lcom/facebook/ae;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->statusCallback:Lcom/facebook/ae;

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    return-void
.end method

.method final b()Lcom/facebook/SessionLoginBehavior;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    return-void
.end method

.method final c()I
    .registers 2

    iget v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    return v0
.end method

.method final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    return-object v0
.end method

.method final e()Lcom/facebook/ad;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/ad;

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    return-object v0
.end method

.method g()Lcom/facebook/AuthorizationClient$AuthorizationRequest;
    .registers 11

    new-instance v8, Lcom/facebook/Session$AuthorizationRequest$4;

    invoke-direct {v8, p0}, Lcom/facebook/Session$AuthorizationRequest$4;-><init>(Lcom/facebook/Session$AuthorizationRequest;)V

    new-instance v0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    iget-object v1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    iget v2, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    iget-boolean v3, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    iget-object v4, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    iget-object v5, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    iget-object v6, p0, Lcom/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    iget-object v9, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;-><init>(Lcom/facebook/SessionLoginBehavior;IZLjava/util/List;Lcom/facebook/SessionDefaultAudience;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/h;Ljava/lang/String;)V

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 10

    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    iget v2, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    iget-object v3, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v4}, Lcom/facebook/SessionDefaultAudience;->name()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    iget-object v6, p0, Lcom/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;-><init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;B)V

    return-object v0
.end method
