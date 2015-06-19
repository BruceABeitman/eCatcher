.class final Lcom/spotify/mobile/android/spotlets/openaccess/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/openaccess/a;->b(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/openaccess/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/a;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a$2;->b:Lcom/spotify/mobile/android/spotlets/openaccess/a;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a$2;->a:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a$2;->b:Lcom/spotify/mobile/android/spotlets/openaccess/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a$2;->a:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

    return-void
.end method
