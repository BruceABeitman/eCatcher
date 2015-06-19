.class final Lcom/spotify/mobile/android/ui/stuff/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/spotify/mobile/android/ui/contextmenu/f;

.field final synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/stuff/h$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/stuff/h$1;->b:Lcom/spotify/mobile/android/ui/contextmenu/f;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/stuff/h$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/h$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/h$1;->b:Lcom/spotify/mobile/android/ui/contextmenu/f;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/stuff/h$1;->c:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V

    return-void
.end method
