.class final Lcom/spotify/mobile/android/ui/fragments/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/a;
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Landroid/content/ContentValues;

.field final synthetic d:Lcom/spotify/mobile/android/model/j;

.field final synthetic e:Lcom/spotify/mobile/android/ui/fragments/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/a;ZZLandroid/content/ContentValues;Lcom/spotify/mobile/android/model/j;)V
    .registers 6

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/a$3;->e:Lcom/spotify/mobile/android/ui/fragments/a;

    iput-boolean p2, p0, Lcom/spotify/mobile/android/ui/fragments/a$3;->a:Z

    iput-boolean p3, p0, Lcom/spotify/mobile/android/ui/fragments/a$3;->b:Z

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/fragments/a$3;->c:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/spotify/mobile/android/ui/fragments/a$3;->d:Lcom/spotify/mobile/android/model/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$3;->e:Lcom/spotify/mobile/android/ui/fragments/a;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->X:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Lcom/spotify/mobile/android/ui/fragments/a;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$3;->a:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$3;->b:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$3;->e:Lcom/spotify/mobile/android/ui/fragments/a;

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/a$3;->a:Z

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/a$3;->c:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/a$3;->d:Lcom/spotify/mobile/android/model/j;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Lcom/spotify/mobile/android/ui/fragments/a;ZLandroid/content/ContentValues;Lcom/spotify/mobile/android/model/j;Z)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$3;->e:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1b
.end method
