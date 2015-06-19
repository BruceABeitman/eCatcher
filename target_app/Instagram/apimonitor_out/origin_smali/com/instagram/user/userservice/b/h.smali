.class final Lcom/instagram/user/userservice/b/h;
.super Ljava/lang/Object;
.source "SuggestionsUserServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/user/userservice/b/g;


# direct methods
.method constructor <init>(Lcom/instagram/user/userservice/b/g;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/user/userservice/b/h;->a:Lcom/instagram/user/userservice/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/instagram/user/userservice/b/f;->b(J)V

    return-void
.end method
