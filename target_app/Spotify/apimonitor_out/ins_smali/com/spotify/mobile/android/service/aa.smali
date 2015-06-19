.class final Lcom/spotify/mobile/android/service/aa;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "BE:08:8B:AE:77:1C:86:2A:1C:27:A4:34:8E:3C:3B:2A:E0:FF:00:6A"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "34:9F:82:F4:DD:2A:57:D9:AA:E9:9C:37:F4:85:31:EB:19:26:2E:D5"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "D7:58:80:8A:D2:91:5E:6A:BF:CA:C3:39:A0:70:BE:9F:86:FB:0C:7C"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/service/aa;->a:[Ljava/lang/String;
return-void
.end method
.method public static a(Landroid/content/pm/PackageInfo;)Z
.registers 6
const/4 v0, 0x0
iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
if-eqz v2, :cond_19
array-length v1, v2
if-lez v1, :cond_19
array-length v3, v2
move v1, v0
:goto_a
if-ge v1, v3, :cond_19
aget-object v4, v2, v1
invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B
move-result-object v4
invoke-static {v4}, Lcom/spotify/mobile/android/service/aa;->a([B)Z
move-result v4
if-eqz v4, :cond_1a
const/4 v0, 0x1
:cond_19
return v0
:cond_1a
add-int/lit8 v1, v1, 0x1
goto :goto_a
.end method
.method private static a(Ljava/lang/String;)Z
.registers 8
const/4 v0, 0x0
sget-object v2, Lcom/spotify/mobile/android/service/aa;->a:[Ljava/lang/String;
array-length v3, v2
move v1, v0
:goto_5
if-ge v1, v3, :cond_18
aget-object v4, v2, v1
const-string v5, ":"
const-string v6, ""
invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_19
const/4 v0, 0x1
:cond_18
return v0
:cond_19
add-int/lit8 v1, v1, 0x1
goto :goto_5
.end method
.method private static a([B)Z
.registers 9
const/4 v0, 0x0
:try_start_1
const-string v1, "SHA1"
invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
array-length v4, v2
move v1, v0
:goto_12
if-ge v1, v4, :cond_2e
aget-byte v5, v2, v1
and-int/lit16 v5, v5, 0xff
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v6
const/4 v7, 0x1
if-ne v6, v7, :cond_28
const-string v6, "0"
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_28
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_12
:cond_2e
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/service/aa;->a(Ljava/lang/String;)Z
:try_end_35
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_35} :catch_37
move-result v0
:goto_36
return v0
:catch_37
move-exception v1
const-string v2, "Shouldn\'t happen"
new-array v3, v0, [Ljava/lang/Object;
invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_36
.end method