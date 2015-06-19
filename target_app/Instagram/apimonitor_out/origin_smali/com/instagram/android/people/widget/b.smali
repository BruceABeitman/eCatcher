.class final Lcom/instagram/android/people/widget/b;
.super Ljava/lang/Object;
.source "PeopleTagSearchFilter.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/people/widget/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/widget/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/widget/b;->a:Lcom/instagram/android/people/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/user/c/a;)Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/people/widget/b;->a:Lcom/instagram/android/people/widget/a;

    invoke-static {v0}, Lcom/instagram/android/people/widget/a;->a(Lcom/instagram/android/people/widget/a;)Lcom/instagram/model/people/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/model/people/b;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/instagram/user/c/a;

    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/b;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    return v0
.end method
