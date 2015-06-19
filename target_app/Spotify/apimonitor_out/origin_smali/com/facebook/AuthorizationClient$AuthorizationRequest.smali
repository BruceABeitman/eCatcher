.class Lcom/facebook/AuthorizationClient$AuthorizationRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient a:Lcom/facebook/h;

.field private final applicationId:Ljava/lang/String;

.field private final authId:Ljava/lang/String;

.field private final defaultAudience:Lcom/facebook/SessionDefaultAudience;

.field private isLegacy:Z

.field private isRerequest:Z

.field private final loginBehavior:Lcom/facebook/SessionLoginBehavior;

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

.field private final previousAccessToken:Ljava/lang/String;

.field private final requestCode:I


# direct methods
.method constructor <init>(Lcom/facebook/SessionLoginBehavior;IZLjava/util/List;Lcom/facebook/SessionDefaultAudience;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/h;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/SessionLoginBehavior;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/SessionDefaultAudience;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/h;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z

    iput-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isRerequest:Z

    iput-object p1, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    iput p2, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->requestCode:I

    iput-boolean p3, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z

    iput-object p4, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->permissions:Ljava/util/List;

    iput-object p5, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    iput-object p6, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->applicationId:Ljava/lang/String;

    iput-object p7, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->previousAccessToken:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->a:Lcom/facebook/h;

    iput-object p9, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->authId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()Lcom/facebook/h;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->a:Lcom/facebook/h;

    return-object v0
.end method

.method final a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->permissions:Ljava/util/List;

    return-void
.end method

.method final b()Ljava/util/List;
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

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->permissions:Ljava/util/List;

    return-object v0
.end method

.method final c()Lcom/facebook/SessionLoginBehavior;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method final d()I
    .registers 2

    iget v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->requestCode:I

    return v0
.end method

.method final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z

    return v0
.end method

.method final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->previousAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method final h()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->previousAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->authId:Ljava/lang/String;

    return-object v0
.end method

.method final j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isRerequest:Z

    return v0
.end method

.method final k()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isRerequest:Z

    return-void
.end method
