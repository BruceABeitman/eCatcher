.class public final Lcom/spotify/mobile/android/ui/contextmenu/g;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/c/a;
.field private a:Lcom/spotify/mobile/android/ui/actions/a;
.field private b:Lcom/spotify/mobile/android/ui/actions/d;
.field private c:Lcom/spotify/mobile/android/ui/actions/c;
.field private final d:Landroid/content/Context;
.field private final e:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private final f:Lcom/spotify/mobile/android/util/ViewUri$SubView;
.field private final g:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->a:Lcom/spotify/mobile/android/ui/actions/a;
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->b:Lcom/spotify/mobile/android/ui/actions/d;
const-class v0, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->c:Lcom/spotify/mobile/android/ui/actions/c;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->d:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->f:Lcom/spotify/mobile/android/util/ViewUri$SubView;
iput-object p4, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->g:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->d:Landroid/content/Context;
return-object v0
.end method
.method private a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->g:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;
invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a(II)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
invoke-direct {p0, p3}, Lcom/spotify/mobile/android/ui/contextmenu/g;->b(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Landroid/graphics/drawable/Drawable;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/g;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->a:Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->d:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->f:Lcom/spotify/mobile/android/util/ViewUri$SubView;
new-instance v3, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->F:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v3, p1, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;I)V
.registers 6
const v0, 0x7f0a012b
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->b:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, p3, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$22;
invoke-direct {v1, p0, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/g$22;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method private b(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
.registers 5
new-instance v0, Lcom/spotify/android/paste/graphics/f;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->d:Landroid/content/Context;
invoke-direct {v0, v1, p1}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->d:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f09006d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->d:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b0052
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
int-to-float v1, v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(F)V
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/ui/actions/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->b:Lcom/spotify/mobile/android/ui/actions/d;
return-object v0
.end method
.method private b(Ljava/lang/String;Ljava/lang/String;I)V
.registers 6
const v0, 0x7f0a012c
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, p3, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$24;
invoke-direct {v1, p0, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/g$24;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-object v0
.end method
.method private c(Ljava/lang/String;Ljava/lang/String;I)V
.registers 6
const v0, 0x7f0a012a
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aR:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, p3, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$6;
invoke-direct {v1, p0, p2, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g$6;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/util/ViewUri$SubView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->f:Lcom/spotify/mobile/android/util/ViewUri$SubView;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/ui/actions/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->a:Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/ui/actions/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->c:Lcom/spotify/mobile/android/ui/actions/c;
return-object v0
.end method
.method public final a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g;->g:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->b()Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->b(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Landroid/graphics/drawable/Drawable;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
return-object v0
.end method
.method public final a()V
.registers 4
const v0, 0x7f0a0132
const v1, 0x7f0f017d
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->X:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->e()Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method public final a(J)V
.registers 6
const v0, 0x7f0a012f
const v1, 0x7f0f0177
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aP:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$5;
invoke-direct {v1, p0, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/g$5;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;J)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method public final a(Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V
.registers 8
const v2, 0x7f0a0130
invoke-static {p3, p4}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b(II)Z
move-result v0
if-eqz v0, :cond_1b
const v0, 0x7f0f018a
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->z:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v2, v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$1;
invoke-direct {v1, p0, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/g$1;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
:goto_1a
:cond_1a
return-void
:cond_1b
invoke-static {p3}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->c(I)Z
move-result v0
if-nez v0, :cond_27
invoke-static {p3, p4}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(II)Z
move-result v0
if-eqz v0, :cond_39
:cond_27
const v0, 0x7f0f0171
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->z:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v2, v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$12;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g$12;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Landroid/net/Uri;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
goto :goto_1a
:cond_39
invoke-static {p3}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(I)Z
move-result v0
if-eqz v0, :cond_1a
const v0, 0x7f0f0178
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->z:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v2, v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$20;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g$20;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Landroid/net/Uri;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
goto :goto_1a
.end method
.method public final a(Lcom/spotify/mobile/android/util/Collection$State;ZLjava/lang/String;)V
.registers 7
new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-direct {v0, p3}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-ne v0, v1, :cond_12
sget-object v0, Lcom/spotify/mobile/android/util/Collection$State;->b:Lcom/spotify/mobile/android/util/Collection$State;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_12
sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/g$19;->b:[I
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/Collection$State;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_62
:goto_1d
:cond_1d
return-void
:pswitch_1e
const v0, 0x7f0a0129
const v1, 0x7f0f0169
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ad:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$13;
invoke-direct {v1, p0, p3}, Lcom/spotify/mobile/android/ui/contextmenu/g$13;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
goto :goto_1d
:pswitch_33
sget-object v0, Lcom/spotify/mobile/android/util/Collection$State;->b:Lcom/spotify/mobile/android/util/Collection$State;
if-ne p1, v0, :cond_4b
const v0, 0x7f0a0128
const v1, 0x7f0f0173
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ad:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$14;
invoke-direct {v1, p0, p3}, Lcom/spotify/mobile/android/ui/contextmenu/g$14;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
:cond_4b
if-eqz p2, :cond_1d
const v0, 0x7f0a0135
const v1, 0x7f0f0182
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aP:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$15;
invoke-direct {v1, p0, p3}, Lcom/spotify/mobile/android/ui/contextmenu/g$15;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
goto :goto_1d
:pswitch_data_62
.packed-switch 0x1
:pswitch_1e
:pswitch_33
:pswitch_33
.end packed-switch
.end method
.method public final a(Ljava/lang/String;)V
.registers 5
const v0, 0x7f0a0133
const v1, 0x7f0f017e
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->X:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$23;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g$23;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method public final a(Ljava/lang/String;J)V
.registers 7
const v0, 0x7f0a0137
const v1, 0x7f0f0184
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aP:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$3;
invoke-direct {v1, p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/contextmenu/g$3;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;J)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method public final a(Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;)V
.registers 14
new-instance v1, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-direct {v1, p5}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
const/4 v0, -0x1
sget-object v2, Lcom/spotify/mobile/android/ui/contextmenu/g$19;->a:[I
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v3
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_58
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Trying to add \'Remove Playlist or Folder\' for other link type: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
move v1, v0
:goto_2c
if-ltz v1, :cond_55
const/4 v0, 0x1
:goto_2f
const-string v2, "Unsupported uri type."
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
const v0, 0x7f0a012e
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aP:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v7
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/g$2;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-wide v4, p3
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/contextmenu/g$2;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;)V
invoke-virtual {v7, v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
:pswitch_4b
const v0, 0x7f0f0174
move v1, v0
goto :goto_2c
:pswitch_50
const v0, 0x7f0f0175
move v1, v0
goto :goto_2c
:cond_55
const/4 v0, 0x0
goto :goto_2f
nop
:pswitch_data_58
.packed-switch 0x1
:pswitch_4b
:pswitch_50
:pswitch_50
.end packed-switch
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const v0, 0x7f0f016c
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const v0, 0x7f0a0139
const v1, 0x7f0f0186
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->an:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$7;
invoke-direct {v1, p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/contextmenu/g$7;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method public final a(Ljava/lang/String;Z)V
.registers 6
if-eqz p2, :cond_1a
const v0, 0x7f0f018c
move v1, v0
:goto_6
const v2, 0x7f0a013b
if-eqz p2, :cond_1f
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aP:Lcom/spotify/android/paste/graphics/SpotifyIcon;
:goto_d
invoke-direct {p0, v2, v1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$21;
invoke-direct {v1, p0, p2, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g$21;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;ZLjava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
:cond_1a
const v0, 0x7f0f0188
move v1, v0
goto :goto_6
:cond_1f
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ad:Lcom/spotify/android/paste/graphics/SpotifyIcon;
goto :goto_d
.end method
.method public final a(ZZLjava/lang/String;)V
.registers 5
if-eqz p1, :cond_8
sget-object v0, Lcom/spotify/mobile/android/util/Collection$State;->a:Lcom/spotify/mobile/android/util/Collection$State;
:goto_4
invoke-virtual {p0, v0, p2, p3}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/util/Collection$State;ZLjava/lang/String;)V
return-void
:cond_8
sget-object v0, Lcom/spotify/mobile/android/util/Collection$State;->c:Lcom/spotify/mobile/android/util/Collection$State;
goto :goto_4
.end method
.method public final varargs a([Ljava/lang/String;)V
.registers 5
const/4 v0, 0x1
invoke-static {v0}, Lcom/google/common/base/i;->a(Z)V
const v0, 0x7f0a01ba
const v1, 0x7f0f0187
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ah:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$10;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g$10;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;[Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method public final b(J)V
.registers 6
const v0, 0x7f0a0136
const v1, 0x7f0f0183
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aP:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$17;
invoke-direct {v1, p0, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/g$17;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;J)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 5
const v0, 0x7f0a0138
const v1, 0x7f0f0185
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bY:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$25;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g$25;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const v0, 0x7f0f016f
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method public final b(Ljava/lang/String;Z)V
.registers 6
if-eqz p2, :cond_17
const v0, 0x7f0f0189
:goto_5
const v1, 0x7f0a013d
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->v:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v1, v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$16;
invoke-direct {v1, p0, p2, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g$16;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;ZLjava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
:cond_17
const v0, 0x7f0f0172
goto :goto_5
.end method
.method public final c(Ljava/lang/String;)V
.registers 5
const v0, 0x7f0a0138
const v1, 0x7f0f0179
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bY:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$26;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g$26;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method public final c(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const v0, 0x7f0f016d
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->b(Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method public final c(Ljava/lang/String;Z)V
.registers 6
if-eqz p2, :cond_1a
const v0, 0x7f0f018b
move v1, v0
:goto_6
const v2, 0x7f0a013e
if-eqz p2, :cond_1f
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->N:Lcom/spotify/android/paste/graphics/SpotifyIcon;
:goto_d
invoke-direct {p0, v2, v1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$18;
invoke-direct {v1, p0, p2, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g$18;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;ZLjava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
:cond_1a
const v0, 0x7f0f017f
move v1, v0
goto :goto_6
:cond_1f
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bf:Lcom/spotify/android/paste/graphics/SpotifyIcon;
goto :goto_d
.end method
.method public final d(Ljava/lang/String;)V
.registers 5
const v0, 0x7f0a0134
const v1, 0x7f0f0180
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->af:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$4;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g$4;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const v0, 0x7f0f016e
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->b(Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method public final e(Ljava/lang/String;)V
.registers 5
const v0, 0x7f0a013a
const v1, 0x7f0f0181
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ah:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$9;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g$9;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method public final e(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const v0, 0x7f0f016b
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->c(Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method public final f(Ljava/lang/String;)V
.registers 5
const v0, 0x7f0a01b9
const v1, 0x7f0f0176
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aP:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$11;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/g$11;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method
.method public final f(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const v0, 0x7f0f016a
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->c(Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method public final g(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const v0, 0x7f0a012d
const v1, 0x7f0f0170
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aL:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(IILcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/g$8;
invoke-direct {v1, p0, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/g$8;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
return-void
.end method