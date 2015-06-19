.class public final Lcom/instagram/feed/a/c;
.super Lcom/instagram/api/j/b;
.source "UserAddLabelRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    iput-object p3, p0, Lcom/instagram/feed/a/c;->a:Ljava/lang/String;

    iput p4, p0, Lcom/instagram/feed/a/c;->b:I

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    const-string v0, "user_id"

    iget-object v1, p0, Lcom/instagram/feed/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/instagram/feed/a/c;->b:I

    sget v1, Lcom/instagram/feed/a/d;->a:I

    if-ne v0, v1, :cond_14

    const-string v0, "labels"

    const-string v1, "employee_suggested"

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public final bridge synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final b_()Ljava/lang/String;
    .registers 2

    const-string v0, "users/add_labels/"

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
