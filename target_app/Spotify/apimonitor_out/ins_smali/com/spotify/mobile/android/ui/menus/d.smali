.class public Lcom/spotify/mobile/android/ui/menus/d;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/c/a;
.field private final a:Lcom/spotify/mobile/android/ui/actions/a;
.field private final b:Lcom/spotify/mobile/android/ui/actions/d;
.field private final c:Lcom/spotify/mobile/android/ui/actions/c;
.field private final d:Lcom/spotify/mobile/android/util/ac;
.method public constructor <init>(Lcom/spotify/mobile/android/ui/actions/a;Lcom/spotify/mobile/android/ui/actions/d;Lcom/spotify/mobile/android/ui/actions/c;Lcom/spotify/mobile/android/util/ac;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/d;->a:Lcom/spotify/mobile/android/ui/actions/a;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/d;->b:Lcom/spotify/mobile/android/ui/actions/d;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/d;->c:Lcom/spotify/mobile/android/ui/actions/c;
iput-object p4, p0, Lcom/spotify/mobile/android/ui/menus/d;->d:Lcom/spotify/mobile/android/util/ac;
return-void
.end method
.method public static a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
.registers 4
const/4 v0, 0x0
invoke-interface {p0, v0, p1, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/view/ContextMenu;IILjava/lang/CharSequence;)Landroid/view/MenuItem;
.registers 5
const/4 v0, 0x0
invoke-interface {p0, v0, p1, p2, p3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/menus/d;)Lcom/spotify/mobile/android/ui/actions/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d;->c:Lcom/spotify/mobile/android/ui/actions/c;
return-object v0
.end method
.method public static a(Landroid/view/ContextMenu;)V
.registers 3
const v0, 0x7f0a0132
const v1, 0x7f0f017d
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d;->a:Lcom/spotify/mobile/android/ui/actions/a;
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->F:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, p4, v1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
invoke-static {p1, p2, p3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/menus/d;)Lcom/spotify/mobile/android/ui/actions/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d;->b:Lcom/spotify/mobile/android/ui/actions/d;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/menus/d;)Lcom/spotify/mobile/android/ui/actions/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d;->a:Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/menus/d;)Lcom/spotify/mobile/android/util/ac;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d;->d:Lcom/spotify/mobile/android/util/ac;
return-object v0
.end method
.method public final a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V
.registers 17
invoke-static/range {p7 .. p8}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b(II)Z
move-result v0
if-eqz v0, :cond_26
const v0, 0x7f0a0130
const v1, 0x7f0f018a
invoke-static {p2, v0, v1}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f0201a6
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v7
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$1;
move-object v1, p0
move-object v2, p1
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/d$1;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;)V
invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
:goto_25
:cond_25
return-void
:cond_26
invoke-static {p7}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->c(I)Z
move-result v0
if-nez v0, :cond_32
invoke-static/range {p7 .. p8}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(II)Z
move-result v0
if-eqz v0, :cond_51
:cond_32
const v0, 0x7f0a0130
const v1, 0x7f0f0171
invoke-static {p2, v0, v1}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f0201a6
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v6
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$10;
move-object v1, p0
move-object v2, p1
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/d$10;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V
invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
goto :goto_25
:cond_51
invoke-static {p7}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(I)Z
move-result v0
if-eqz v0, :cond_25
const v0, 0x7f0a0130
const v1, 0x7f0f0178
invoke-static {p2, v0, v1}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f02019d
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v6
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$15;
move-object v1, p0
move-object v2, p1
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/d$15;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V
invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
goto :goto_25
.end method
.method public final a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/Collection$State;ZLjava/lang/String;)V
.registers 15
const v3, 0x7f0a0129
const v2, 0x7f020181
new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-direct {v0, p7}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-ne v0, v1, :cond_18
sget-object v0, Lcom/spotify/mobile/android/util/Collection$State;->b:Lcom/spotify/mobile/android/util/Collection$State;
invoke-static {p5, v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_18
sget-object v0, Lcom/spotify/mobile/android/ui/menus/d$14;->b:[I
invoke-virtual {p5}, Lcom/spotify/mobile/android/util/Collection$State;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_78
:goto_23
:cond_23
return-void
:pswitch_24
const v0, 0x7f0f0169
invoke-static {p2, v3, v0}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v6
invoke-interface {v6, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$8;
move-object v1, p0
move-object v2, p1
move-object v3, p3
move-object v4, p4
move-object v5, p7
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/d$8;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V
invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
goto :goto_23
:pswitch_3c
sget-object v0, Lcom/spotify/mobile/android/util/Collection$State;->b:Lcom/spotify/mobile/android/util/Collection$State;
if-ne p5, v0, :cond_57
const v0, 0x7f0f0173
invoke-static {p2, v3, v0}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v6
invoke-interface {v6, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$9;
move-object v1, p0
move-object v2, p1
move-object v3, p3
move-object v4, p4
move-object v5, p7
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/d$9;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V
invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
:cond_57
if-eqz p6, :cond_23
const v0, 0x7f0a0135
const v1, 0x7f0f0182
invoke-static {p2, v0, v1}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v6
const v0, 0x7f0201ac
invoke-interface {v6, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$11;
move-object v1, p0
move-object v2, p1
move-object v3, p3
move-object v4, p4
move-object v5, p7
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/d$11;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V
invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
goto :goto_23
nop
:pswitch_data_78
.packed-switch 0x1
:pswitch_24
:pswitch_3c
:pswitch_3c
.end packed-switch
.end method
.method public final a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V
.registers 13
const v0, 0x7f0a0134
const v1, 0x7f0f0180
invoke-static {p2, v0, v1}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f0201a1
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v6
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$3;
move-object v1, p0
move-object v2, p1
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/d$3;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V
invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
return-void
.end method
.method public final a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;)V
.registers 15
const v0, 0x7f0a012c
const v1, 0x7f0f016d
invoke-static {p2, v0, v1}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f02019b
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v7
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$19;
move-object v1, p0
move-object v2, p1
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/d$19;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
return-void
.end method
.method public final a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 17
const v0, 0x7f0a0139
const v1, 0x7f0f0186
invoke-static {p2, v0, v1}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f0201a4
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v8
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$6;
move-object v1, p0
move-object v2, p1
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
move-object/from16 v7, p7
invoke-direct/range {v0 .. v7}, Lcom/spotify/mobile/android/ui/menus/d$6;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v8, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
return-void
.end method
.method public final b(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V
.registers 13
const v0, 0x7f0a013a
const v1, 0x7f0f0181
invoke-static {p2, v0, v1}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f0201a2
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v6
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$7;
move-object v1, p0
move-object v2, p1
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/d$7;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V
invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
return-void
.end method
.method public final b(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;)V
.registers 15
const v0, 0x7f0a012a
const v1, 0x7f0f016b
invoke-static {p2, v0, v1}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020182
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v7
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$5;
move-object v1, p0
move-object v2, p1
move-object v3, p3
move-object v4, p4
move-object v5, p6
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/d$5;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
return-void
.end method