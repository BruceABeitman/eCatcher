.class final Lcom/instagram/android/l/c/t;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/l/c/s;


# direct methods
.method constructor <init>(Lcom/instagram/android/l/c/s;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/c/t;->a:Lcom/instagram/android/l/c/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/c/t;->a:Lcom/instagram/android/l/c/s;

    iget-object v0, v0, Lcom/instagram/android/l/c/s;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->i(Lcom/instagram/android/l/c/a;)V

    return-void
.end method
