.class public Lcom/glympse/android/hal/android/provider/ContactsContract;
.super Ljava/lang/Object;
.source "ContactsContract.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static init()V
.registers 3
:try_start_0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-ge v0, v1, :cond_b
sget-object v0, Lcom/glympse/android/hal/android/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
const-string v0, "android.provider.ContactsContract$Profile"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string v1, "android.provider.ContactsContract$DisplayPhoto"
invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
const-string v2, "CONTENT_URI"
invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/Uri;
sput-object v0, Lcom/glympse/android/hal/android/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;
const-string v0, "CONTENT_URI"
invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/Uri;
sput-object v0, Lcom/glympse/android/hal/android/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;
:try_end_35
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_36
goto :goto_a
:catch_36
move-exception v0
goto :goto_a
.end method