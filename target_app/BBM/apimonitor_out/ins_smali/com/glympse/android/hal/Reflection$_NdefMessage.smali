.class public Lcom/glympse/android/hal/Reflection$_NdefMessage;
.super Ljava/lang/Object;
.source "Reflection.java"
.field private static cR:Z
.field private static dA:Ljava/lang/Class;
.field private static dB:Ljava/lang/reflect/Constructor;
.field private static dC:Ljava/lang/reflect/Method;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x0
sput-boolean v0, Lcom/glympse/android/hal/Reflection$_NdefMessage;->cR:Z
sput-object v1, Lcom/glympse/android/hal/Reflection$_NdefMessage;->dA:Ljava/lang/Class;
sput-object v1, Lcom/glympse/android/hal/Reflection$_NdefMessage;->dB:Ljava/lang/reflect/Constructor;
sput-object v1, Lcom/glympse/android/hal/Reflection$_NdefMessage;->dC:Ljava/lang/reflect/Method;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static Load()V
.registers 8
const/4 v7, 0x1
const/4 v0, 0x0
sget-boolean v1, Lcom/glympse/android/hal/Reflection$_NdefMessage;->cR:Z
if-nez v1, :cond_43
sput-boolean v7, Lcom/glympse/android/hal/Reflection$_NdefMessage;->cR:Z
:try_start_8
const-string v1, "android.nfc.NdefMessage"
invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
sput-object v1, Lcom/glympse/android/hal/Reflection$_NdefMessage;->dA:Ljava/lang/Class;
const/4 v1, 0x0
invoke-static {v1}, Lcom/glympse/android/hal/Reflection$_NdefRecord;->createArray(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
sget-object v2, Lcom/glympse/android/hal/Reflection$_NdefMessage;->dA:Ljava/lang/Class;
invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;
move-result-object v2
array-length v3, v2
:goto_20
if-ge v0, v3, :cond_38
aget-object v4, v2, v0
invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
move-result-object v5
if-eqz v5, :cond_44
array-length v6, v5
if-ne v7, v6, :cond_44
const/4 v6, 0x0
aget-object v5, v5, v6
invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_44
sput-object v4, Lcom/glympse/android/hal/Reflection$_NdefMessage;->dB:Ljava/lang/reflect/Constructor;
:cond_38
sget-object v0, Lcom/glympse/android/hal/Reflection$_NdefMessage;->dA:Ljava/lang/Class;
const-string v1, "getRecords"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_NdefMessage;->dC:Ljava/lang/reflect/Method;
:goto_43
:try_end_43
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_43} :catch_47
:cond_43
return-void
:cond_44
add-int/lit8 v0, v0, 0x1
goto :goto_20
:catch_47
move-exception v0
const/4 v0, 0x5
const-string v1, "Failure locating NfcMessage via reflection"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_43
.end method
.method public static createInstance(Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
const/4 v3, 0x0
invoke-static {}, Lcom/glympse/android/hal/Reflection$_NdefMessage;->Load()V
sget-object v0, Lcom/glympse/android/hal/Reflection$_NdefMessage;->dB:Ljava/lang/reflect/Constructor;
if-eqz v0, :cond_19
:try_start_8
sget-object v0, Lcom/glympse/android/hal/Reflection$_NdefMessage;->dB:Ljava/lang/reflect/Constructor;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p0, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
:try_end_13
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_13} :catch_15
move-result-object v0
:goto_14
return-object v0
:catch_15
move-exception v0
invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_19
const/4 v0, 0x0
goto :goto_14
.end method
.method public static getRecords(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
const/4 v0, 0x0
invoke-static {}, Lcom/glympse/android/hal/Reflection$_NdefMessage;->Load()V
sget-object v1, Lcom/glympse/android/hal/Reflection$_NdefMessage;->dC:Ljava/lang/reflect/Method;
if-eqz v1, :cond_f
:try_start_8
sget-object v1, Lcom/glympse/android/hal/Reflection$_NdefMessage;->dC:Ljava/lang/reflect/Method;
const/4 v2, 0x0
invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_e
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_10
move-result-object v0
:goto_f
:cond_f
return-object v0
:catch_10
move-exception v1
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_f
.end method