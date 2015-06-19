.class Lcom/twidroid/fragments/e/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/twidroid/model/twitter/c;

.field public b:Z

.field public c:Lcom/twidroid/UberSocialApplication;

.field final synthetic d:Lcom/twidroid/fragments/e/n;


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/e/n;Lcom/twidroid/model/twitter/c;ZLcom/twidroid/UberSocialApplication;)V
    .registers 5

    iput-object p1, p0, Lcom/twidroid/fragments/e/q;->d:Lcom/twidroid/fragments/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/fragments/e/q;->a:Lcom/twidroid/model/twitter/c;

    iput-boolean p3, p0, Lcom/twidroid/fragments/e/q;->b:Z

    iput-object p4, p0, Lcom/twidroid/fragments/e/q;->c:Lcom/twidroid/UberSocialApplication;

    return-void
.end method
