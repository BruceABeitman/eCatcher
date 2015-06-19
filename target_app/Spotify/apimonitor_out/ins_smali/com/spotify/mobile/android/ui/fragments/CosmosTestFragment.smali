.class public Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.field static final synthetic a:Z
.field private Y:Ljava/lang/String;
.field private Z:Landroid/widget/Button;
.field private aa:Ljava/lang/String;
.field private ab:Landroid/widget/Button;
.field private ac:Landroid/widget/Button;
.field private ad:Landroid/widget/Spinner;
.field private ae:Landroid/widget/Spinner;
.field private af:Landroid/widget/CheckBox;
.field private ag:Landroid/widget/TextView;
.field private ah:Landroid/widget/ScrollView;
.field private ai:Lcom/spotify/cosmos/android/Subscription;
.field private final aj:Ljava/lang/String;
.field private final ak:Ljava/lang/String;
.field private final al:Ljava/lang/String;
.field private final am:Ljava/lang/String;
.field private final an:Ljava/util/List;
.field private ao:Z
.field private ap:Z
.field private b:Landroid/os/Handler;
.field private c:Lcom/spotify/cosmos/android/Resolver;
.field private d:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
.field private e:Lcom/spotify/cosmos/android/Subscription;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
const-string v0, "spotify:album:5NrFMOprmnMEf4gMnLaHcq"
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->aj:Ljava/lang/String;
const-string v0, "spotify:album:2LFstTk3PGSZ8KbGknoFzE"
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ak:Ljava/lang/String;
const-string v0, "spotify:artist:12VaqyEhgwDRuFfEqbnrpz"
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->al:Ljava/lang/String;
const-string v0, "spotify:user:napstersean:playlist:3vxotOnOGDlZXyzJPLFnm2"
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->am:Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->an:Ljava/util/List;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->i:Ljava/lang/String;
return-object v0
.end method
.method private a()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->d:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$18;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b:Landroid/os/Handler;
invoke-direct {v1, p0, v2}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$18;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Landroid/os/Handler;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->pause(Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Ljava/lang/Throwable;)V
.registers 4
const-string v0, "ERROR"
invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ag:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ag:Landroid/widget/TextView;
const-string v1, "\n"
invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
:cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ag:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "["
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "] "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ah:Landroid/widget/ScrollView;
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$6;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$6;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ao:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->h:Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ap:Z
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ac:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
.registers 5
const-string v0, "sp://echo"
const-string v1, "Hello, world!"
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->postBytes(Ljava/lang/String;[B)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->c:Lcom/spotify/cosmos/android/Resolver;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$14;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b:Landroid/os/Handler;
invoke-direct {v2, p0, v3}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$14;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Landroid/os/Handler;)V
invoke-virtual {v1, v0, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
return-void
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ai:Lcom/spotify/cosmos/android/Subscription;
if-nez v0, :cond_2b
const-string v0, "sp://echo"
const-string v1, "Hello, world!"
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->subscribeBytes(Ljava/lang/String;[B)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->c:Lcom/spotify/cosmos/android/Resolver;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$15;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b:Landroid/os/Handler;
invoke-direct {v2, p0, v3}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$15;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Landroid/os/Handler;)V
invoke-virtual {v1, v0, v2}, Lcom/spotify/cosmos/android/Resolver;->subscribe(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ai:Lcom/spotify/cosmos/android/Subscription;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ab:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
:goto_2a
return-void
:cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ai:Lcom/spotify/cosmos/android/Subscription;
invoke-interface {v0}, Lcom/spotify/cosmos/android/Subscription;->unsubscribe()Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ai:Lcom/spotify/cosmos/android/Subscription;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ab:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
goto :goto_2a
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->e:Lcom/spotify/cosmos/android/Subscription;
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->d:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$13;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b:Landroid/os/Handler;
const-class v3, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
invoke-direct {v1, p0, v2, v3}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$13;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->subscribe(Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->e:Lcom/spotify/cosmos/android/Subscription;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->Z:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->Y:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
:goto_1c
return-void
:cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->e:Lcom/spotify/cosmos/android/Subscription;
invoke-interface {v0}, Lcom/spotify/cosmos/android/Subscription;->unsubscribe()Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->e:Lcom/spotify/cosmos/android/Subscription;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->Z:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->aa:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
goto :goto_1c
.end method
.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
.registers 7
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ao:Z
if-eqz v0, :cond_8
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a()V
:goto_7
return-void
:cond_8
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ap:Z
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->d:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$16;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b:Landroid/os/Handler;
invoke-direct {v1, p0, v2}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$16;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Landroid/os/Handler;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->resume(Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;
goto :goto_7
:cond_19
const/4 v1, 0x0
:try_start_1a
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->values()[Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ad:Landroid/widget/Spinner;
invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v2
aget-object v0, v0, v2
:goto_26
:try_end_26
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_37
sget-object v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$7;->a:[I
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->ordinal()I
move-result v0
aget v0, v2, v0
packed-switch v0, :pswitch_data_f8
const-string v0, "Unrecognized playback type. Shouldn\'t happen."
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
goto :goto_7
:catch_37
move-exception v0
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->e:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;
goto :goto_26
:pswitch_3b
const-string v0, "spotify:album:2LFstTk3PGSZ8KbGknoFzE"
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->createFromContextUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
const-string v2, "spotify:internal:cosmos_test"
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->viewUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
const-string v2, "played uri: spotify:album:2LFstTk3PGSZ8KbGknoFzE"
move-object v3, v2
move-object v2, v0
:try_start_4b
:goto_4b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ae:Landroid/widget/Spinner;
invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
:try_end_5a
.catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_5a} :catch_f3
move-result-object v0
:goto_5b
if-eqz v0, :cond_78
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->index(I)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
const-string v1, "player"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "index: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v1, v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_78
invoke-virtual {v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->build()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->af:Landroid/widget/CheckBox;
invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z
move-result v1
if-eqz v1, :cond_90
new-instance v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;
invoke-direct {v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;-><init>()V
iput-object v1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->options:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;
iget-object v1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->options:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;
const/4 v2, 0x1
iput-boolean v2, v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;->shuffle:Z
:cond_90
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->d:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$17;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b:Landroid/os/Handler;
invoke-direct {v2, p0, v4, v3}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$17;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Landroid/os/Handler;Ljava/lang/String;)V
invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->play(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;
goto/16 :goto_7
:pswitch_9e
const-string v0, "spotify:artist:12VaqyEhgwDRuFfEqbnrpz"
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->createFromContextUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
const-string v2, "spotify:internal:cosmos_test"
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->viewUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
const-string v2, "played uri: spotify:artist:12VaqyEhgwDRuFfEqbnrpz"
move-object v3, v2
move-object v2, v0
goto :goto_4b
:pswitch_af
const-string v0, "spotify:user:napstersean:playlist:3vxotOnOGDlZXyzJPLFnm2"
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->createFromContextUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
const-string v2, "spotify:internal:cosmos_test"
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->viewUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
const-string v2, "played uri: spotify:user:napstersean:playlist:3vxotOnOGDlZXyzJPLFnm2"
move-object v3, v2
move-object v2, v0
goto :goto_4b
:pswitch_c0
sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PLAY:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
const-string v2, "spotify:album:5NrFMOprmnMEf4gMnLaHcq"
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->contextUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->an:Ljava/util/List;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->tracks(Ljava/util/List;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
const-string v2, "spotify:internal:cosmos_test"
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->viewUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "played tracks: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, "\n"
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->an:Ljava/util/List;
invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
move-object v3, v2
move-object v2, v0
goto/16 :goto_4b
:catch_f3
move-exception v0
move-object v0, v1
goto/16 :goto_5b
nop
:pswitch_data_f8
.packed-switch 0x1
:pswitch_3b
:pswitch_9e
:pswitch_af
:pswitch_c0
.end packed-switch
.end method
.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ao:Z
return v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a()V
return-void
.end method
.method static synthetic j(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->d:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$20;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b:Landroid/os/Handler;
invoke-direct {v1, p0, v2}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$20;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Landroid/os/Handler;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->skipToNextTrack(Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;
return-void
.end method
.method static synthetic k(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->d:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$19;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b:Landroid/os/Handler;
invoke-direct {v1, p0, v2}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$19;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Landroid/os/Handler;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->skipToPreviousTrack(Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;
return-void
.end method
.method static synthetic l(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ag:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method static synthetic m(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)Landroid/widget/ScrollView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ah:Landroid/widget/ScrollView;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const v3, 0x1090009
const v0, 0x7f030067
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a:Z
if-nez v0, :cond_17
if-nez v1, :cond_17
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_17
const v0, 0x7f0f01c9
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->f:Ljava/lang/String;
const v0, 0x7f0f01cb
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->g:Ljava/lang/String;
const v0, 0x7f0f01c6
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->Y:Ljava/lang/String;
const v0, 0x7f0f01c5
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->aa:Ljava/lang/String;
const v0, 0x7f0a0293
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$8;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$8;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0294
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ab:Landroid/widget/Button;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ab:Landroid/widget/Button;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$9;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$9;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a029c
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->Z:Landroid/widget/Button;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->Z:Landroid/widget/Button;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$10;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$10;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0f01c3
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->h:Ljava/lang/String;
const v0, 0x7f0f01c0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->i:Ljava/lang/String;
const v0, 0x7f0a0297
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ac:Landroid/widget/Button;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ac:Landroid/widget/Button;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$11;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$11;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a029a
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Spinner;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ad:Landroid/widget/Spinner;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v2, 0x7f070001
invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ad:Landroid/widget/Spinner;
invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ad:Landroid/widget/Spinner;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$12;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$12;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
const v0, 0x7f0a029b
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Spinner;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ae:Landroid/widget/Spinner;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/high16 v2, 0x7f07
invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ae:Landroid/widget/Spinner;
invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ae:Landroid/widget/Spinner;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$21;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$21;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
const v0, 0x7f0a0298
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$22;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$22;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0296
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$3;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a029d
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$4;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$4;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0299
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->af:Landroid/widget/CheckBox;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->af:Landroid/widget/CheckBox;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$5;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$5;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a029e
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ScrollView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ah:Landroid/widget/ScrollView;
const v0, 0x7f0a029f
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->ag:Landroid/widget/TextView;
return-object v1
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const-string v0, "Cosmos Test"
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b:Landroid/os/Handler;
new-instance v0, Lcom/spotify/cosmos/android/DeferredResolver;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/cosmos/android/DeferredResolver;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->c:Lcom/spotify/cosmos/android/Resolver;
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/Player;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->c:Lcom/spotify/cosmos/android/Resolver;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;-><init>(Lcom/spotify/cosmos/android/Resolver;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->d:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->c:Lcom/spotify/cosmos/android/Resolver;
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
invoke-virtual {v0, v1}, Lcom/spotify/cosmos/android/Resolver;->registerConnectionCallback(Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->d:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$2;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b:Landroid/os/Handler;
const-class v3, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
invoke-direct {v1, p0, v2, v3}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->subscribe(Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->c:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->an:Ljava/util/List;
const-string v1, "spotify:track:7vzczp2f2qK3YywNkZ2uo5"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->an:Ljava/util/List;
const-string v1, "spotify:track:5z2YdsdkDtaYNbbNLguNlC"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->an:Ljava/util/List;
const-string v1, "spotify:track:4zztp85oS36ijgAWwyhX8p"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->an:Ljava/util/List;
const-string v1, "spotify:track:1n46BBFHozz6jDufJ81BDT"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->an:Ljava/util/List;
const-string v1, "spotify:track:0i7Hh51R5z3Y32tJPFV54V"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->an:Ljava/util/List;
const-string v1, "spotify:track:1RjUaJM9aKGixVZlbcFUZv"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final z()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->c:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->z()V
return-void
.end method