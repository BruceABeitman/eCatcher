.class public final Lcom/bbm/ui/t;
.super Ljava/lang/Object;
.source "BlockActivityOverlay.java"


# instance fields
.field public final a:Lcom/slidingmenu/lib/a/a;

.field public b:Lcom/bbm/ui/FooterActionBar;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/slidingmenu/lib/a/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/t;->b:Lcom/bbm/ui/FooterActionBar;

    iput-object p1, p0, Lcom/bbm/ui/t;->a:Lcom/slidingmenu/lib/a/a;

    const v0, 0x7f0e00f2

    iput v0, p0, Lcom/bbm/ui/t;->c:I

    return-void
.end method
