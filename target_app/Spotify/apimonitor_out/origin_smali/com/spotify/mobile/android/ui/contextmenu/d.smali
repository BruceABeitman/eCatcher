.class final Lcom/spotify/mobile/android/ui/contextmenu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/c;

.field private final b:Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/c;Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/d;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/c;Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/d;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/c;Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/d;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->f()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/c;->a(Lcom/spotify/mobile/android/ui/contextmenu/c;)Lcom/spotify/mobile/android/ui/contextmenu/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a()V

    return-void
.end method
