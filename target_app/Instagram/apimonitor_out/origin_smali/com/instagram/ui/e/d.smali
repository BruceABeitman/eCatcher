.class public final Lcom/instagram/ui/e/d;
.super Ljava/lang/Object;
.source "UIComponentStateTrackerFactory.java"


# static fields
.field private static final a:Lcom/instagram/ui/e/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/instagram/ui/e/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->a()Lcom/instagram/common/u/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/e/a;-><init>(Lcom/instagram/common/u/b/a;)V

    sput-object v0, Lcom/instagram/ui/e/d;->a:Lcom/instagram/ui/e/a;

    return-void
.end method

.method public static a()Lcom/instagram/ui/e/a;
    .registers 1

    sget-object v0, Lcom/instagram/ui/e/d;->a:Lcom/instagram/ui/e/a;

    return-object v0
.end method
