.class public final Lcom/google/zxing/client/android/d/o;
.super Lcom/google/zxing/client/android/d/j;
.source "TelResultHandler.java"
.field private static final c:[I
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x2
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Lcom/google/zxing/client/android/y;->button_dial:I
aput v2, v0, v1
const/4 v1, 0x1
sget v2, Lcom/google/zxing/client/android/y;->button_add_contact:I
aput v2, v0, v1
sput-object v0, Lcom/google/zxing/client/android/d/o;->c:[I
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/d/j;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V
return-void
.end method
.method public final a()I
.registers 2
sget-object v0, Lcom/google/zxing/client/android/d/o;->c:[I
array-length v0, v0
return v0
.end method
.method public final a(I)I
.registers 3
sget-object v0, Lcom/google/zxing/client/android/d/o;->c:[I
aget v0, v0, p1
return v0
.end method
.method public final b()Ljava/lang/CharSequence;
.registers 4
iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;
invoke-virtual {v0}, Lcom/google/zxing/client/a/q;->a()Ljava/lang/String;
move-result-object v0
const-string v1, "\r"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final b(I)V
.registers 5
iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;
check-cast v0, Lcom/google/zxing/client/a/z;
packed-switch p1, :pswitch_data_2a
:goto_7
return-void
:pswitch_8
iget-object v0, v0, Lcom/google/zxing/client/a/z;->b:Ljava/lang/String;
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.DIAL"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/d/j;->b(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->b:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
goto :goto_7
:pswitch_1e
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
iget-object v0, v0, Lcom/google/zxing/client/a/z;->a:Ljava/lang/String;
aput-object v0, v1, v2
invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/d/o;->a([Ljava/lang/String;)V
goto :goto_7
:pswitch_data_2a
.packed-switch 0x0
:pswitch_8
:pswitch_1e
.end packed-switch
.end method