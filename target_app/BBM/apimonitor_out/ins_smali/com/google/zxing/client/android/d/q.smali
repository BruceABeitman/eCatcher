.class public final Lcom/google/zxing/client/android/d/q;
.super Lcom/google/zxing/client/android/d/j;
.source "URIResultHandler.java"
.field private static final c:[Ljava/lang/String;
.field private static final d:[I
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-array v0, v3, [Ljava/lang/String;
const-string v1, "otpauth:"
aput-object v1, v0, v2
sput-object v0, Lcom/google/zxing/client/android/d/q;->c:[Ljava/lang/String;
const/4 v0, 0x4
new-array v0, v0, [I
sget v1, Lcom/google/zxing/client/android/y;->button_open_browser:I
aput v1, v0, v2
sget v1, Lcom/google/zxing/client/android/y;->button_share_by_email:I
aput v1, v0, v3
const/4 v1, 0x2
sget v2, Lcom/google/zxing/client/android/y;->button_share_by_sms:I
aput v2, v0, v1
const/4 v1, 0x3
sget v2, Lcom/google/zxing/client/android/y;->button_search_book_contents:I
aput v2, v0, v1
sput-object v0, Lcom/google/zxing/client/android/d/q;->d:[I
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/d/j;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V
return-void
.end method
.method public final a()I
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;
check-cast v0, Lcom/google/zxing/client/a/ac;
iget-object v0, v0, Lcom/google/zxing/client/a/ac;->a:Ljava/lang/String;
invoke-static {v0}, Lcom/google/zxing/client/android/r;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
sget-object v0, Lcom/google/zxing/client/android/d/q;->d:[I
array-length v0, v0
:goto_f
return v0
:cond_10
sget-object v0, Lcom/google/zxing/client/android/d/q;->d:[I
array-length v0, v0
add-int/lit8 v0, v0, -0x1
goto :goto_f
.end method
.method public final a(I)I
.registers 3
sget-object v0, Lcom/google/zxing/client/android/d/q;->d:[I
aget v0, v0, p1
return v0
.end method
.method public final b(I)V
.registers 3
iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;
check-cast v0, Lcom/google/zxing/client/a/ac;
iget-object v0, v0, Lcom/google/zxing/client/a/ac;->a:Ljava/lang/String;
packed-switch p1, :pswitch_data_1a
:goto_9
return-void
:pswitch_a
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/q;->e(Ljava/lang/String;)V
goto :goto_9
:pswitch_e
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/q;->a(Ljava/lang/String;)V
goto :goto_9
:pswitch_12
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/q;->b(Ljava/lang/String;)V
goto :goto_9
:pswitch_16
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/q;->d(Ljava/lang/String;)V
goto :goto_9
:pswitch_data_1a
.packed-switch 0x0
:pswitch_a
:pswitch_e
:pswitch_12
:pswitch_16
.end packed-switch
.end method
.method public final d()Z
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;
check-cast v0, Lcom/google/zxing/client/a/ac;
iget-object v0, v0, Lcom/google/zxing/client/a/ac;->a:Ljava/lang/String;
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/google/zxing/client/android/d/q;->c:[Ljava/lang/String;
array-length v4, v3
move v0, v1
:goto_11
if-ge v0, v4, :cond_20
aget-object v5, v3, v0
invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_1d
const/4 v0, 0x1
:goto_1c
return v0
:cond_1d
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_20
move v0, v1
goto :goto_1c
.end method