.class final Lcom/instagram/android/maps/c/k;
.super Lcom/instagram/api/j/b;
.source "PhotoMapsEditHelper.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/c/c;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/instagram/android/maps/c/c;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
    .registers 6

    iput-object p1, p0, Lcom/instagram/android/maps/c/k;->a:Lcom/instagram/android/maps/c/c;

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v0

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    const-string v0, "ticket"

    iget-object v1, p0, Lcom/instagram/android/maps/c/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/c/k;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/instagram/android/maps/c/k;->h()V

    return-void
.end method

.method public final b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b_()Ljava/lang/String;
    .registers 2

    const-string v0, "maps/check_ticket/"

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
