.class public Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"
.field private A:Z
.field private B:Z
.field private C:Z
.field private D:Z
.field private E:Ljava/lang/String;
.field private F:Ljava/lang/String;
.field private G:Ljava/lang/String;
.field private H:Ljava/lang/String;
.field private I:Ljava/lang/String;
.field private J:Ljava/lang/String;
.field private K:Lcom/spotify/mobile/android/util/aa;
.field private L:Landroid/content/DialogInterface$OnClickListener;
.field private M:Landroid/view/View$OnClickListener;
.field private N:Landroid/text/TextWatcher;
.field private O:Landroid/support/v4/app/z;
.field private P:Landroid/support/v4/app/z;
.field private n:Lcom/squareup/picasso/Picasso;
.field private o:Lcom/spotify/mobile/android/ui/actions/a;
.field private p:Lcom/spotify/mobile/android/util/dw;
.field private q:Lcom/spotify/mobile/android/util/z;
.field private r:Landroid/view/View;
.field private s:Landroid/widget/ImageView;
.field private t:Landroid/widget/Button;
.field private u:Landroid/widget/EditText;
.field private v:Landroid/widget/EditText;
.field private w:Landroid/view/View;
.field private x:Landroid/net/Uri;
.field private y:Landroid/net/Uri;
.field private z:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->n:Lcom/squareup/picasso/Picasso;
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->o:Lcom/spotify/mobile/android/ui/actions/a;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->K:Lcom/spotify/mobile/android/util/aa;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->L:Landroid/content/DialogInterface$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$4;-><init>(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->M:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$5;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$5;-><init>(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->N:Landroid/text/TextWatcher;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$6;-><init>(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->O:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$7;-><init>(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->P:Landroid/support/v4/app/z;
return-void
.end method
.method private a()Landroid/net/Uri;
.registers 6
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v0
const-string v1, "mounted"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4b
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->getExternalCacheDir()Ljava/io/File;
move-result-object v1
const-string v2, "annotate"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:goto_17
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_26
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v1
const-string v2, "Unable to create cache directory!"
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
:cond_26
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".jpg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
return-object v0
:cond_4b
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->getCacheDir()Ljava/io/File;
move-result-object v1
const-string v2, "annotate"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
goto :goto_17
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Landroid/net/Uri;)Landroid/net/Uri;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->y:Landroid/net/Uri;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->H:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Landroid/net/Uri;)V
.registers 1
invoke-static {p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->b(Landroid/net/Uri;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
.registers 13
const/4 v2, 0x0
const/4 v1, 0x1
new-instance v3, Lcom/spotify/mobile/android/spotlets/collection/service/a;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/collection/service/a;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->f()Z
move-result v0
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->G:Ljava/lang/String;
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
new-instance v5, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v6, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v7, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bY:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v5, v6, v7}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v6, "something_changed"
invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v6, v7}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v5
if-nez v0, :cond_28
if-eqz v4, :cond_a0
:cond_28
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->u:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->v:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
if-eqz v0, :cond_b2
sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
iget-object v8, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
invoke-virtual {v0, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_a8
const-string v0, "whith_image"
const-string v8, "true"
invoke-virtual {v5, v0, v8}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
:goto_53
if-eqz v0, :cond_5d
sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
invoke-virtual {v8, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_b4
:goto_5d
:cond_5d
const-string v8, "new_playlist"
invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v9
invoke-virtual {v5, v8, v9}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
if-nez v4, :cond_d5
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->G:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/spotify/mobile/android/spotlets/collection/service/a;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/b;
move-result-object v3
invoke-virtual {v3, v6}, Lcom/spotify/mobile/android/spotlets/collection/service/b;->c(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/b;
move-result-object v3
if-eqz v0, :cond_d3
sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_d0
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/spotlets/collection/service/b;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/b;
move v0, v1
:goto_84
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->J:Ljava/lang/String;
invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_134
const-string v4, "with_description"
const-string v6, "true"
invoke-virtual {v5, v4, v6}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
invoke-virtual {v3, v7}, Lcom/spotify/mobile/android/spotlets/collection/service/b;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/b;
:goto_96
invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/collection/service/b;->b()V
:goto_99
if-nez v0, :cond_9d
if-eqz v1, :cond_126
:cond_9d
invoke-static {p0}, Lcom/spotify/mobile/android/util/dp;->r(Landroid/content/Context;)V
:goto_a0
:cond_a0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->o:Lcom/spotify/mobile/android/ui/actions/a;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aQ:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0, v5}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
:cond_a8
const-string v0, "remove_image"
const-string v8, "true"
invoke-virtual {v5, v0, v8}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
goto :goto_53
:cond_b2
const/4 v0, 0x0
goto :goto_53
:cond_b4
new-instance v8, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v9, Lcom/spotify/mobile/android/util/ClientEvent$Event;->av:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {v8, v9}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
new-instance v9, Lcom/spotify/mobile/android/spotlets/collection/b/a;
invoke-direct {v9}, Lcom/spotify/mobile/android/spotlets/collection/b/a;-><init>()V
invoke-static {v0, v8}, Lcom/spotify/mobile/android/spotlets/collection/b/a;->a(Landroid/net/Uri;Lcom/spotify/mobile/android/util/ClientEvent;)V
const-class v9, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v9}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
sget-object v9, Lcom/spotify/mobile/android/util/ViewUri;->aQ:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v10, Lcom/spotify/mobile/android/util/ViewUri$SubView;->Y:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {p0, v9, v10, v8}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
goto :goto_5d
:cond_d0
invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/collection/service/b;->a()Lcom/spotify/mobile/android/spotlets/collection/service/b;
:cond_d3
move v0, v2
goto :goto_84
:cond_d5
invoke-virtual {v3, v6}, Lcom/spotify/mobile/android/spotlets/collection/service/a;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/c;
move-result-object v3
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->F:Ljava/lang/String;
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_e6
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->F:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/spotify/mobile/android/spotlets/collection/service/c;->d(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/c;
:cond_e6
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->E:Ljava/lang/String;
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_f3
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->E:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/spotify/mobile/android/spotlets/collection/service/c;->c(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/c;
:cond_f3
if-eqz v0, :cond_132
sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_132
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/spotlets/collection/service/c;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/c;
move v0, v1
:goto_105
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->J:Ljava/lang/String;
invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_11e
invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_11e
const-string v2, "with_description"
const-string v4, "true"
invoke-virtual {v5, v2, v4}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
invoke-virtual {v3, v7}, Lcom/spotify/mobile/android/spotlets/collection/service/c;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/c;
move v2, v1
:cond_11e
invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/collection/service/c;->a()V
move v11, v1
move v1, v2
move v2, v11
goto/16 :goto_99
:cond_126
if-eqz v2, :cond_12d
invoke-static {p0}, Lcom/spotify/mobile/android/util/dp;->o(Landroid/content/Context;)V
goto/16 :goto_a0
:cond_12d
invoke-static {p0}, Lcom/spotify/mobile/android/util/dp;->q(Landroid/content/Context;)V
goto/16 :goto_a0
:cond_132
move v0, v2
goto :goto_105
:cond_134
move v1, v2
goto/16 :goto_96
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->z:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Landroid/net/Uri;)Landroid/net/Uri;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
return-object p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->J:Ljava/lang/String;
return-object p1
.end method
.method private static b(Landroid/net/Uri;)V
.registers 5
if-eqz p0, :cond_20
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v0
if-nez v0, :cond_20
const-string v0, "Failed to delete file %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_20
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
.registers 3
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->r:Landroid/view/View;
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->z:Z
if-eqz v0, :cond_c
const/16 v0, 0x8
:goto_8
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_c
const/4 v0, 0x0
goto :goto_8
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->C:Z
return p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Lcom/spotify/mobile/android/ui/actions/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->o:Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->I:Ljava/lang/String;
return-object p1
.end method
.method private c(Landroid/net/Uri;)V
.registers 5
const v2, 0x7f0b0020
const v1, 0x7f020074
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->n:Lcom/squareup/picasso/Picasso;
invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0, v2, v2}, Lcom/squareup/picasso/ad;->a(II)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/picasso/ad;->b()Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->b(I)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->s:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Landroid/net/Uri;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->c(Landroid/net/Uri;)V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->A:Z
return p1
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/net/Uri;
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->a()Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->y:Landroid/net/Uri;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
return-object v0
.end method
.method private f()Z
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->H:Ljava/lang/String;
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->H:Ljava/lang/String;
:goto_8
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->J:Ljava/lang/String;
if-eqz v1, :cond_60
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->J:Ljava/lang/String;
:goto_e
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->u:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->v:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_63
:cond_2e
move v0, v3
:goto_2f
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->A:Z
if-eqz v1, :cond_65
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
if-eqz v1, :cond_65
sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_65
move v1, v3
:goto_42
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
if-eqz v4, :cond_67
sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_67
move v4, v3
:goto_51
if-nez v0, :cond_5b
if-nez v4, :cond_5b
if-nez v1, :cond_5b
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->D:Z
if-eqz v0, :cond_5c
:cond_5b
move v2, v3
:cond_5c
return v2
:cond_5d
const-string v0, ""
goto :goto_8
:cond_60
const-string v1, ""
goto :goto_e
:cond_63
move v0, v2
goto :goto_2f
:cond_65
move v1, v2
goto :goto_42
:cond_67
move v4, v2
goto :goto_51
.end method
.method static synthetic g(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Z
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
if-eqz v0, :cond_2a
sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_2a
move v0, v1
:goto_11
iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->A:Z
if-eqz v3, :cond_2c
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
if-eqz v3, :cond_23
sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2c
:cond_23
move v3, v1
:goto_24
if-nez v0, :cond_28
if-eqz v3, :cond_29
:cond_28
move v2, v1
:cond_29
return v2
:cond_2a
move v0, v2
goto :goto_11
:cond_2c
move v3, v2
goto :goto_24
.end method
.method static synthetic h(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/content/DialogInterface$OnClickListener;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->L:Landroid/content/DialogInterface$OnClickListener;
return-object v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->C:Z
return v0
.end method
.method static synthetic j(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->t:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic k(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->G:Ljava/lang/String;
return-object v0
.end method
.method static synthetic l(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->u:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic m(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->v:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic n(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->w:Landroid/view/View;
return-object v0
.end method
.method static synthetic o(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->s:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic p(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->H:Ljava/lang/String;
return-object v0
.end method
.method static synthetic q(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->J:Ljava/lang/String;
return-object v0
.end method
.method static synthetic r(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->I:Ljava/lang/String;
return-object v0
.end method
.method static synthetic s(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/support/v4/app/z;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->P:Landroid/support/v4/app/z;
return-object v0
.end method
.method static synthetic t(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->B:Z
return v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 11
const/4 v6, 0x0
const/4 v5, -0x1
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V
const/4 v0, 0x1
if-ne p1, v0, :cond_2d
if-ne p2, v5, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->b(Landroid/net/Uri;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->y:Landroid/net/Uri;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->c(Landroid/net/Uri;)V
:goto_18
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->y:Landroid/net/Uri;
:goto_1b
:cond_1b
return-void
:cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->o:Lcom/spotify/mobile/android/ui/actions/a;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aQ:Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Z:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ca:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
goto :goto_18
:cond_2d
if-nez p1, :cond_91
if-ne p2, v5, :cond_80
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->b(Landroid/net/Uri;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->a()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
:try_start_42
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v0
new-instance v2, Ljava/io/FileOutputStream;
invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
const/16 v1, 0x400
new-array v1, v1, [B
:goto_57
invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
move-result v3
if-eq v3, v5, :cond_70
const/4 v4, 0x0
invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
:try_end_61
.catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_61} :catch_62
.catch Ljava/io/IOException; {:try_start_42 .. :try_end_61} :catch_77
goto :goto_57
:catch_62
move-exception v0
const-string v1, "FileNotFoundException"
new-array v2, v6, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
:goto_6a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->c(Landroid/net/Uri;)V
goto :goto_1b
:try_start_70
:cond_70
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:try_end_76
.catch Ljava/io/FileNotFoundException; {:try_start_70 .. :try_end_76} :catch_62
.catch Ljava/io/IOException; {:try_start_70 .. :try_end_76} :catch_77
goto :goto_6a
:catch_77
move-exception v0
const-string v1, "IOException"
new-array v2, v6, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_6a
:cond_80
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->o:Lcom/spotify/mobile/android/ui/actions/a;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aQ:Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Z:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bZ:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
goto :goto_1b
:cond_91
const/4 v0, 0x2
if-ne p1, v0, :cond_1b
if-ne p2, v5, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->b(Landroid/net/Uri;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->finish()V
goto/16 :goto_1b
.end method
.method public onBackPressed()V
.registers 3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->f()Z
move-result v0
if-nez v0, :cond_a
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
:goto_9
return-void
:cond_a
invoke-static {p0}, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;->a(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
const/4 v1, 0x2
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_9
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030019
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->setContentView(I)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aQ:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->p:Lcom/spotify/mobile/android/util/dw;
const v0, 0x7f0a01f8
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->s:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->s:Landroid/widget/ImageView;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->M:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0219
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->v:Landroid/widget/EditText;
const v0, 0x7f0a01fc
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->u:Landroid/widget/EditText;
const v0, 0x7f0a0210
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->r:Landroid/view/View;
const v0, 0x7f0a0214
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->w:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->w:Landroid/view/View;
const/16 v3, 0x8
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
if-eqz p1, :cond_133
const-string v0, "playlist_uri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->G:Ljava/lang/String;
const-string v0, "folder_uri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->F:Ljava/lang/String;
const-string v0, "item_uri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->E:Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->u:Landroid/widget/EditText;
const-string v3, "title"
invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->v:Landroid/widget/EditText;
const-string v3, "description"
invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
const-string v0, "image_uri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
const-string v0, "temp_uri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->y:Landroid/net/Uri;
const-string v0, "failed"
invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->D:Z
:goto_a5
if-nez p1, :cond_17d
move v0, v1
:goto_a8
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->B:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->G:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_be
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->e()Landroid/support/v4/app/y;
move-result-object v0
const v3, 0x7f0a0155
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->O:Landroid/support/v4/app/z;
invoke-virtual {v0, v3, v5, v4}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
:cond_be
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
if-eqz v0, :cond_c7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->c(Landroid/net/Uri;)V
:cond_c7
const v0, 0x7f0a0212
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->t:Landroid/widget/Button;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->t:Landroid/widget/Button;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->u:Landroid/widget/EditText;
invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_180
:goto_e8
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->t:Landroid/widget/Button;
new-instance v1, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->u:Landroid/widget/EditText;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->N:Landroid/text/TextWatcher;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->G:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
const v0, 0x7f0a020e
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
if-eqz v2, :cond_183
const v1, 0x7f0f0046
:goto_110
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->t:Landroid/widget/Button;
if-eqz v2, :cond_187
const v0, 0x7f0f003a
:goto_11a
invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V
new-instance v0, Lcom/spotify/mobile/android/util/z;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->K:Lcom/spotify/mobile/android/util/aa;
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->q:Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->e()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0156
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->q:Lcom/spotify/mobile/android/util/z;
invoke-virtual {v0, v1, v5, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_133
const-string v0, "playlist_uri"
invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->G:Ljava/lang/String;
const-string v0, "folder_uri"
invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->F:Ljava/lang/String;
const-string v0, "item_uri"
invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->E:Ljava/lang/String;
const-string v0, "title"
invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->H:Ljava/lang/String;
const-string v0, "description"
invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->J:Ljava/lang/String;
const-string v0, "image_uri"
invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
const-string v0, "failed"
invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->D:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->u:Landroid/widget/EditText;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->H:Ljava/lang/String;
invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->v:Landroid/widget/EditText;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->J:Ljava/lang/String;
invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_a5
:cond_17d
move v0, v2
goto/16 :goto_a8
:cond_180
move v1, v2
goto/16 :goto_e8
:cond_183
const v1, 0x7f0f0043
goto :goto_110
:cond_187
const v0, 0x7f0f0042
goto :goto_11a
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->p:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
const-string v0, "com.spotify.mobile.android.service.action.client.BACKGROUND"
invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->p:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
const-string v0, "com.spotify.mobile.android.service.action.client.FOREGROUND"
invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "playlist_uri"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->G:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "folder_uri"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->F:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "item_uri"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->E:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "image_uri"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->x:Landroid/net/Uri;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v0, "temp_uri"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->y:Landroid/net/Uri;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v0, "failed"
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->D:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->u:Landroid/widget/EditText;
if-eqz v0, :cond_4c
const-string v0, "title"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->u:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "description"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->v:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_4c
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method