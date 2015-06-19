.class final Lcom/spotify/mobile/android/service/flow/login/y$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/y;->a(IILcom/spotify/mobile/android/service/flow/login/z;)Lcom/spotify/android/paste/app/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/z;

.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/y;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/y;Lcom/spotify/mobile/android/service/flow/login/z;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/y$2;->b:Lcom/spotify/mobile/android/service/flow/login/y;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/y$2;->a:Lcom/spotify/mobile/android/service/flow/login/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    check-cast p1, Lcom/spotify/android/paste/app/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/app/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y$2;->a:Lcom/spotify/mobile/android/service/flow/login/z;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/z;->a()V

    return-void
.end method
