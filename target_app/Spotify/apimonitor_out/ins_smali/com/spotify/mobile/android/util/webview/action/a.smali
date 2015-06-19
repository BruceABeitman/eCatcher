.class final Lcom/spotify/mobile/android/util/webview/action/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Lcom/spotify/mobile/android/util/webview/action/b;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/util/webview/action/d;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/webview/action/d;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/util/webview/action/a;->a:Lcom/spotify/mobile/android/util/webview/action/b;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Landroid/content/Context;Lcom/spotify/mobile/android/util/webview/action/WebActionType;)Lcom/spotify/mobile/android/util/webview/action/b;
.registers 4
sget-object v0, Lcom/spotify/mobile/android/util/webview/action/a$1;->a:[I
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_36
const-string v0, "Action type not registered"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/util/webview/action/a;->a:Lcom/spotify/mobile/android/util/webview/action/b;
:goto_12
return-object v0
:pswitch_13
new-instance v0, Lcom/spotify/mobile/android/util/webview/action/f;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/webview/action/f;-><init>(Landroid/content/Context;)V
goto :goto_12
:pswitch_19
new-instance v0, Lcom/spotify/mobile/android/util/webview/action/e;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/webview/action/e;-><init>(Landroid/content/Context;)V
goto :goto_12
:pswitch_1f
new-instance v0, Lcom/spotify/mobile/android/util/webview/action/g;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/webview/action/g;-><init>(Landroid/content/Context;)V
goto :goto_12
:pswitch_25
const-string v0, "CLOSE action type not supported or not registered."
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/util/webview/action/a;->a:Lcom/spotify/mobile/android/util/webview/action/b;
goto :goto_12
:pswitch_2d
const-string v0, "NO_MATCH action type not supported."
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/util/webview/action/a;->a:Lcom/spotify/mobile/android/util/webview/action/b;
goto :goto_12
nop
:pswitch_data_36
.packed-switch 0x1
:pswitch_13
:pswitch_19
:pswitch_1f
:pswitch_25
:pswitch_2d
.end packed-switch
.end method