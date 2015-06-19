.class final Lcom/instagram/android/l/a/c;
.super Lcom/instagram/android/j/c;
.source "UserListAdapter.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/l/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/l/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/a/c;->a:Lcom/instagram/android/l/a/a;

    invoke-direct {p0}, Lcom/instagram/android/j/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Lcom/instagram/android/l/a/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/instagram/android/l/a/a;->j:Lcom/instagram/user/c/a;

    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Lcom/instagram/android/l/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/l/a/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Lcom/instagram/android/l/a/a;

    iput-object p1, v0, Lcom/instagram/android/l/a/a;->j:Lcom/instagram/user/c/a;

    iget-object v0, p0, Lcom/instagram/android/l/a/c;->a:Lcom/instagram/android/l/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/l/a/a;->notifyDataSetChanged()V

    return-void
.end method
