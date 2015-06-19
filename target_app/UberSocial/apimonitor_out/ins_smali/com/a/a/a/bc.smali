.class public final Lcom/a/a/a/bc;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/util/Comparator;
.field private static b:Ljava/lang/Boolean;
.field private static final c:[C
.field private static d:J
.field private static e:Ljava/lang/Boolean;
.method static constructor <clinit>()V
.registers 3
const/4 v2, 0x0
sput-object v2, Lcom/a/a/a/bc;->b:Ljava/lang/Boolean;
const/16 v0, 0x10
new-array v0, v0, [C
fill-array-data v0, :array_1a
sput-object v0, Lcom/a/a/a/bc;->c:[C
const-wide/16 v0, -0x1
sput-wide v0, Lcom/a/a/a/bc;->d:J
sput-object v2, Lcom/a/a/a/bc;->e:Ljava/lang/Boolean;
new-instance v0, Lcom/a/a/a/bd;
invoke-direct {v0}, Lcom/a/a/a/bd;-><init>()V
sput-object v0, Lcom/a/a/a/bc;->a:Ljava/util/Comparator;
return-void
:array_1a
.array-data 0x2
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x61t 0x0t
0x62t 0x0t
0x63t 0x0t
0x64t 0x0t
0x65t 0x0t
0x66t 0x0t
.end array-data
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
.registers 6
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v0
iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I
if-lez v0, :cond_1d
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;
move-result-object v0
:goto_18
invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
:cond_1d
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
goto :goto_18
.end method
.method public static a(Z)I
.registers 6
const-wide v3, 0x4058c00000000000L
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->z()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/a/a/a/bc;->b(Landroid/content/Context;)F
move-result v0
if-nez p0, :cond_15
const/4 v0, 0x1
:goto_14
return v0
:cond_15
if-eqz p0, :cond_1e
float-to-double v1, v0
cmpl-double v1, v1, v3
if-ltz v1, :cond_1e
const/4 v0, 0x3
goto :goto_14
:cond_1e
if-eqz p0, :cond_27
float-to-double v0, v0
cmpg-double v0, v0, v3
if-gez v0, :cond_27
const/4 v0, 0x2
goto :goto_14
:cond_27
const/4 v0, 0x0
goto :goto_14
.end method
.method public static a(Landroid/content/Context;)J
.registers 3
new-instance v1, Landroid/app/ActivityManager$MemoryInfo;
invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V
const-string v0, "activity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager;
invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
return-wide v0
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;I)J
.registers 7
invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
int-to-long v2, p2
mul-long/2addr v0, v2
return-wide v0
.end method
.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;
.registers 6
const-string v0, "activity"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager;
invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
move-result-object v0
const/4 v1, 0x0
if-eqz v0, :cond_28
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_13
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;
iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_13
:goto_27
return-object v0
:cond_28
move-object v0, v1
goto :goto_27
.end method
.method public static a()Landroid/content/SharedPreferences;
.registers 3
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->z()Landroid/content/Context;
move-result-object v0
const-string v1, "com.crashlytics.prefs"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
return-object v0
.end method
.method public static a(I)Ljava/lang/String;
.registers 6
if-gez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "value must be zero or greater"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v1, "%1$10s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
const/16 v1, 0x20
const/16 v2, 0x30
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 3
const-string v0, "string"
invoke-static {p0, p1, v0}, Lcom/a/a/a/bc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_d
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_c
return-object v0
:cond_d
const-string v0, ""
goto :goto_c
.end method
.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/4 v0, 0x0
const/4 v5, 0x1
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_39
:try_start_8
new-instance v2, Ljava/io/BufferedReader;
new-instance v1, Ljava/io/FileReader;
invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
const/16 v3, 0x400
invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
:cond_14
:try_start_14
:try_end_14
.catchall {:try_start_8 .. :try_end_14} :catchall_5e
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_3a
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_34
const-string v3, "\\s*:\\s*"
invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v3
const/4 v4, 0x2
invoke-virtual {v3, v1, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;
move-result-object v1
array-length v3, v1
if-le v3, v5, :cond_14
const/4 v3, 0x0
aget-object v3, v1, v3
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_14
const/4 v3, 0x1
aget-object v0, v1, v3
:cond_34
:try_end_34
.catchall {:try_start_14 .. :try_end_34} :catchall_67
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_34} :catch_69
const-string v1, "Failed to close system file reader."
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
:goto_39
:cond_39
return-object v0
:catch_3a
move-exception v1
move-object v2, v0
:try_start_3c
:goto_3c
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v3
const-string v4, "Crashlytics"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Error parsing "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5, v1}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_58
.catchall {:try_start_3c .. :try_end_58} :catchall_67
const-string v1, "Failed to close system file reader."
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
goto :goto_39
:catchall_5e
move-exception v1
move-object v2, v0
move-object v0, v1
:goto_61
const-string v1, "Failed to close system file reader."
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v0
:catchall_67
move-exception v0
goto :goto_61
:catch_69
move-exception v1
goto :goto_3c
.end method
.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/util/Scanner;
invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
const-string v1, "\\A"
invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z
move-result v1
if-eqz v1, :cond_16
invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;
move-result-object v0
:goto_15
return-object v0
:cond_16
const-string v0, ""
goto :goto_15
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const-string v0, "SHA-1"
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-static {v1, v0}, Lcom/a/a/a/bc;->a([BLjava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a([B)Ljava/lang/String;
.registers 7
array-length v0, p0
shl-int/lit8 v0, v0, 0x1
new-array v1, v0, [C
const/4 v0, 0x0
:goto_6
array-length v2, p0
if-ge v0, v2, :cond_26
aget-byte v2, p0, v0
and-int/lit16 v2, v2, 0xff
shl-int/lit8 v3, v0, 0x1
sget-object v4, Lcom/a/a/a/bc;->c:[C
ushr-int/lit8 v5, v2, 0x4
aget-char v4, v4, v5
aput-char v4, v1, v3
shl-int/lit8 v3, v0, 0x1
add-int/lit8 v3, v3, 0x1
sget-object v4, Lcom/a/a/a/bc;->c:[C
and-int/lit8 v2, v2, 0xf
aget-char v2, v4, v2
aput-char v2, v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_26
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
return-object v0
.end method
.method private static a([BLjava/lang/String;)Ljava/lang/String;
.registers 7
:try_start_0
invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
:try_end_3
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3} :catch_10
move-result-object v0
invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
move-result-object v0
invoke-static {v0}, Lcom/a/a/a/bc;->a([B)Ljava/lang/String;
move-result-object v0
:goto_f
return-object v0
:catch_10
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Could not create hashing algorithm: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", returning empty string."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const-string v0, ""
goto :goto_f
.end method
.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v1, 0x0
if-eqz p0, :cond_6
array-length v0, p0
if-nez v0, :cond_8
:cond_6
move-object v0, v1
:goto_7
return-object v0
:cond_8
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
array-length v3, p0
const/4 v0, 0x0
:goto_f
if-ge v0, v3, :cond_29
aget-object v4, p0, v0
if-eqz v4, :cond_26
const-string v5, "-"
const-string v6, ""
invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v4
sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_26
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_29
invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_35
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_45
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_35
:cond_45
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_54
invoke-static {v0}, Lcom/a/a/a/bc;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_7
:cond_54
move-object v0, v1
goto :goto_7
.end method
.method public static a(ILjava/lang/String;)V
.registers 5
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->z()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/a/a/a/bc;->e(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_1c
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const/4 v1, 0x4
const-string v2, "Crashlytics"
invoke-interface {v0, v1, v2, p1}, Lcom/a/a/a/cr;->a(ILjava/lang/String;Ljava/lang/String;)V
:cond_1c
return-void
.end method
.method public static a(Ljava/io/Closeable;Ljava/lang/String;)V
.registers 5
if-eqz p0, :cond_5
:try_start_2
invoke-interface {p0}, Ljava/io/Closeable;->close()V
:try_end_5
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
invoke-interface {v1, v2, p1, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method public static a(Ljava/io/Flushable;Ljava/lang/String;)V
.registers 5
if-eqz p0, :cond_5
:try_start_2
invoke-interface {p0}, Ljava/io/Flushable;->flush()V
:try_end_5
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
invoke-interface {v1, v2, p1, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
.registers 5
:goto_0
invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_c
const/4 v1, 0x0
invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V
goto :goto_0
:cond_c
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
.registers 5
if-eqz p0, :cond_14
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
if-eqz v0, :cond_14
const-string v1, "bool"
invoke-static {p0, p1, v1}, Lcom/a/a/a/bc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
move-result v1
if-lez v1, :cond_15
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result p2
:goto_14
:cond_14
return p2
:cond_15
const-string v0, "string"
invoke-static {p0, p1, v0}, Lcom/a/a/a/bc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_14
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result p2
goto :goto_14
.end method
.method public static b(Landroid/content/Context;)F
.registers 5
const/4 v3, -0x1
new-instance v0, Landroid/content/IntentFilter;
const-string v1, "android.intent.action.BATTERY_CHANGED"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
move-result-object v0
const-string v1, "level"
invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
const-string v2, "scale"
invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
int-to-float v1, v1
int-to-float v0, v0
div-float v0, v1, v0
return v0
.end method
.method public static b()I
.registers 1
invoke-static {}, Lcom/a/a/a/be;->a()Lcom/a/a/a/be;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/be;->ordinal()I
move-result v0
return v0
.end method
.method public static b(Ljava/lang/String;)J
.registers 8
new-instance v0, Landroid/os/StatFs;
invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
move-result v1
int-to-long v1, v1
invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I
move-result v3
int-to-long v3, v3
mul-long/2addr v3, v1
invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
move-result v0
int-to-long v5, v0
mul-long v0, v1, v5
sub-long v0, v3, v0
return-wide v0
.end method
.method public static b(I)Ljava/lang/String;
.registers 2
packed-switch p0, :pswitch_data_18
const-string v0, "?"
:goto_5
return-object v0
:pswitch_6
const-string v0, "A"
goto :goto_5
:pswitch_9
const-string v0, "D"
goto :goto_5
:pswitch_c
const-string v0, "E"
goto :goto_5
:pswitch_f
const-string v0, "I"
goto :goto_5
:pswitch_12
const-string v0, "V"
goto :goto_5
:pswitch_15
const-string v0, "W"
goto :goto_5
:pswitch_data_18
.packed-switch 0x2
:pswitch_12
:pswitch_9
:pswitch_f
:pswitch_15
:pswitch_c
:pswitch_6
.end packed-switch
.end method
.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
.registers 5
:try_start_0
const-string v0, "SHA-1"
invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v0
const/16 v1, 0x400
new-array v1, v1, [B
:goto_a
invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_29
const/4 v3, 0x0
invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16
goto :goto_a
:catch_16
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Could not calculate hash for app icon."
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const-string v0, ""
:goto_28
return-object v0
:cond_29
:try_start_29
invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
move-result-object v0
invoke-static {v0}, Lcom/a/a/a/bc;->a([B)Ljava/lang/String;
:try_end_30
.catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_16
move-result-object v0
goto :goto_28
.end method
.method public static b(ILjava/lang/String;)Ljavax/crypto/Cipher;
.registers 7
const/16 v4, 0x20
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-ge v0, v4, :cond_10
new-instance v0, Ljava/security/InvalidKeyException;
const-string v1, "Key must be at least 32 bytes."
invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
new-instance v0, Ljavax/crypto/spec/SecretKeySpec;
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
const/4 v2, 0x0
const-string v3, "AES/ECB/PKCS7Padding"
invoke-direct {v0, v1, v2, v4, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V
:try_start_1c
const-string v1, "AES/ECB/PKCS7Padding"
invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
:try_end_21
.catch Ljava/security/GeneralSecurityException; {:try_start_1c .. :try_end_21} :catch_27
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
return-object v1
:catch_27
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Could not create Cipher for AES/ECB/PKCS7Padding - should never happen."
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public static declared-synchronized c()J
.registers 9
const-class v3, Lcom/a/a/a/bc;
monitor-enter v3
:try_start_3
sget-wide v0, Lcom/a/a/a/bc;->d:J
const-wide/16 v4, -0x1
cmp-long v0, v0, v4
if-nez v0, :cond_38
const-wide/16 v1, 0x0
new-instance v0, Ljava/io/File;
const-string v4, "/proc/meminfo"
invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const-string v4, "MemTotal"
invoke-static {v0, v4}, Lcom/a/a/a/bc;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_99
sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
:try_end_25
.catchall {:try_start_3 .. :try_end_25} :catchall_9b
move-result-object v4
:try_start_26
const-string v0, "KB"
invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3c
const-string v0, "KB"
const/16 v5, 0x400
invoke-static {v4, v0, v5}, Lcom/a/a/a/bc;->a(Ljava/lang/String;Ljava/lang/String;I)J
:try_end_35
.catchall {:try_start_26 .. :try_end_35} :catchall_9b
.catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_35} :catch_7c
move-result-wide v0
:goto_36
:try_start_36
sput-wide v0, Lcom/a/a/a/bc;->d:J
:cond_38
sget-wide v0, Lcom/a/a/a/bc;->d:J
:try_end_3a
.catchall {:try_start_36 .. :try_end_3a} :catchall_9b
monitor-exit v3
return-wide v0
:try_start_3c
:cond_3c
const-string v0, "MB"
invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4d
const-string v0, "MB"
const/high16 v5, 0x10
invoke-static {v4, v0, v5}, Lcom/a/a/a/bc;->a(Ljava/lang/String;Ljava/lang/String;I)J
move-result-wide v0
goto :goto_36
:cond_4d
const-string v0, "GB"
invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_5e
const-string v0, "GB"
const/high16 v5, 0x4000
invoke-static {v4, v0, v5}, Lcom/a/a/a/bc;->a(Ljava/lang/String;Ljava/lang/String;I)J
move-result-wide v0
goto :goto_36
:cond_5e
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v5, "Crashlytics"
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "Unexpected meminfo format while computing RAM: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v0, v5, v6}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_7a
.catchall {:try_start_3c .. :try_end_7a} :catchall_9b
.catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_7a} :catch_7c
move-wide v0, v1
goto :goto_36
:catch_7c
move-exception v0
:try_start_7d
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v5
invoke-virtual {v5}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v5
const-string v6, "Crashlytics"
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "Unexpected meminfo format while computing RAM: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-interface {v5, v6, v4, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_99
:try_end_99
.catchall {:try_start_7d .. :try_end_99} :catchall_9b
move-wide v0, v1
goto :goto_36
:catchall_9b
move-exception v0
monitor-exit v3
throw v0
.end method
.method public static c(Ljava/lang/String;)V
.registers 3
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->z()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/a/a/a/bc;->e(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_1b
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
invoke-interface {v0, v1, p0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_1b
return-void
.end method
.method public static c(Landroid/content/Context;)Z
.registers 4
const/4 v1, 0x0
invoke-static {}, Lcom/a/a/a/bc;->d()Z
move-result v0
if-eqz v0, :cond_9
move v0, v1
:goto_8
return v0
:cond_9
const-string v0, "sensor"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/SensorManager;
const/16 v2, 0x8
invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;
move-result-object v0
if-eqz v0, :cond_1b
const/4 v0, 0x1
goto :goto_8
:cond_1b
move v0, v1
goto :goto_8
.end method
.method public static d(Ljava/lang/String;)V
.registers 3
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->z()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/a/a/a/bc;->e(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_1b
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
invoke-interface {v0, v1, p0}, Lcom/a/a/a/cr;->d(Ljava/lang/String;Ljava/lang/String;)V
:cond_1b
return-void
.end method
.method public static d()Z
.registers 3
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->z()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string v1, "android_id"
invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "sdk"
sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_28
const-string v1, "google_sdk"
sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_28
if-nez v0, :cond_2a
:cond_28
const/4 v0, 0x1
:goto_29
return v0
:cond_2a
const/4 v0, 0x0
goto :goto_29
.end method
.method public static d(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x0
sget-object v1, Lcom/a/a/a/bc;->e:Ljava/lang/Boolean;
if-nez v1, :cond_14
const-string v1, "com.crashlytics.SilenceCrashlyticsLogCat"
invoke-static {p0, v1, v0}, Lcom/a/a/a/bc;->a(Landroid/content/Context;Ljava/lang/String;Z)Z
move-result v1
if-nez v1, :cond_e
const/4 v0, 0x1
:cond_e
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
sput-object v0, Lcom/a/a/a/bc;->e:Ljava/lang/Boolean;
:cond_14
sget-object v0, Lcom/a/a/a/bc;->e:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public static e()Z
.registers 4
const/4 v0, 0x1
invoke-static {}, Lcom/a/a/a/bc;->d()Z
move-result v1
sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;
if-nez v1, :cond_14
if-eqz v2, :cond_14
const-string v3, "test-keys"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_14
:cond_13
:goto_13
return v0
:cond_14
new-instance v2, Ljava/io/File;
const-string v3, "/system/app/Superuser.apk"
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_13
new-instance v2, Ljava/io/File;
const-string v3, "/system/xbin/su"
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
if-nez v1, :cond_30
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_13
:cond_30
const/4 v0, 0x0
goto :goto_13
.end method
.method public static e(Landroid/content/Context;)Z
.registers 3
sget-object v0, Lcom/a/a/a/bc;->b:Ljava/lang/Boolean;
if-nez v0, :cond_11
const-string v0, "com.crashlytics.Trace"
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lcom/a/a/a/bc;->a(Landroid/content/Context;Ljava/lang/String;Z)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
sput-object v0, Lcom/a/a/a/bc;->b:Ljava/lang/Boolean;
:cond_11
sget-object v0, Lcom/a/a/a/bc;->b:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public static e(Ljava/lang/String;)Z
.registers 2
if-eqz p0, :cond_8
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static f()I
.registers 4
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {}, Lcom/a/a/a/bc;->d()Z
move-result v0
if-eqz v0, :cond_23
move v0, v1
:goto_9
invoke-static {}, Lcom/a/a/a/bc;->e()Z
move-result v3
if-eqz v3, :cond_11
or-int/lit8 v0, v0, 0x2
:cond_11
invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
move-result v3
if-nez v3, :cond_1d
invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z
move-result v3
if-eqz v3, :cond_1e
:cond_1d
move v2, v1
:cond_1e
if-eqz v2, :cond_22
or-int/lit8 v0, v0, 0x4
:cond_22
return v0
:cond_23
move v0, v2
goto :goto_9
.end method
.method public static f(Landroid/content/Context;)Z
.registers 2
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v0
iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public static g(Landroid/content/Context;)Ljava/lang/String;
.registers 7
const/4 v0, 0x0
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {p0}, Lcom/a/a/a/bc;->h(Landroid/content/Context;)I
move-result v2
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_36
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_1f
move-result-object v2
:try_start_d
invoke-static {v2}, Lcom/a/a/a/bc;->b(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/a/a/a/bc;->e(Ljava/lang/String;)Z
:try_end_14
.catchall {:try_start_d .. :try_end_14} :catchall_3f
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_41
move-result v3
if-eqz v3, :cond_1d
:goto_17
const-string v1, "Failed to close icon input stream."
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
:goto_1c
return-object v0
:cond_1d
move-object v0, v1
goto :goto_17
:catch_1f
move-exception v1
move-object v2, v0
:goto_21
:try_start_21
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v3
const-string v4, "Crashlytics"
const-string v5, "Could not calculate hash for app icon."
invoke-interface {v3, v4, v5, v1}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_30
.catchall {:try_start_21 .. :try_end_30} :catchall_3f
const-string v1, "Failed to close icon input stream."
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
goto :goto_1c
:catchall_36
move-exception v1
move-object v2, v0
move-object v0, v1
:goto_39
const-string v1, "Failed to close icon input stream."
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v0
:catchall_3f
move-exception v0
goto :goto_39
:catch_41
move-exception v1
goto :goto_21
.end method
.method public static h(Landroid/content/Context;)I
.registers 2
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v0
iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I
return v0
.end method
.method public static i(Landroid/content/Context;)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
const-string v1, "com.crashlytics.android.build_id"
const-string v2, "string"
invoke-static {p0, v1, v2}, Lcom/a/a/a/bc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
move-result v1
if-eqz v1, :cond_2f
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Build ID is: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_2f
return-object v0
.end method