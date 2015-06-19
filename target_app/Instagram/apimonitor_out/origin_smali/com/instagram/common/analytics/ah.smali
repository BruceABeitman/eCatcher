.class final Lcom/instagram/common/analytics/ah;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"

# interfaces
.implements Lcom/instagram/common/c/a;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/x;


# direct methods
.method constructor <init>(Lcom/instagram/common/analytics/x;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/analytics/ah;->a:Lcom/instagram/common/analytics/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/common/analytics/ah;->a:Lcom/instagram/common/analytics/x;

    sget v1, Lcom/instagram/common/analytics/an;->d:I

    invoke-static {v0, v1}, Lcom/instagram/common/analytics/x;->a(Lcom/instagram/common/analytics/x;I)V

    return-void
.end method
