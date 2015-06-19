.class public final Lcom/facebook/Session$OpenRequest;
.super Lcom/facebook/Session$AuthorizationRequest;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Lcom/facebook/Session$AuthorizationRequest;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->a(I)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$AuthorizationRequest;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->a(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->a(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/facebook/ae;)Lcom/facebook/Session$AuthorizationRequest;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->a(Lcom/facebook/ae;)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final bridge synthetic a(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->a(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final b(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->a(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final b(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->a(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final b(Lcom/facebook/ae;)Lcom/facebook/Session$OpenRequest;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->a(Lcom/facebook/ae;)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/Session$OpenRequest;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->a(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final h()Lcom/facebook/Session$OpenRequest;
    .registers 2

    const/16 v0, 0x64

    invoke-super {p0, v0}, Lcom/facebook/Session$AuthorizationRequest;->a(I)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method
