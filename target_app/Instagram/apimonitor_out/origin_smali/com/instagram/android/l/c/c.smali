.class final Lcom/instagram/android/l/c/c;
.super Lcom/instagram/android/l/b/d;
.source "UserListFragment.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instagram/android/l/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/l/c/a;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/instagram/android/l/c/c;->b:Lcom/instagram/android/l/c/a;

    iput-object p5, p0, Lcom/instagram/android/l/c/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/instagram/android/l/b/d;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    return-void
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/c/c;->a:Ljava/lang/String;

    return-object v0
.end method
