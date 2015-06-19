.class public Lorg/pinguo/cloudshare/support/scanner/FileNameRecognizer;
.super Ljava/lang/Object;
.source "FileNameRecognizer.java"
.field private static final C360_ORG_EXTEND:Ljava/lang/String; = "_org"
.field private static final FLENGTH_C360_EFF:I = 0x1c
.field private static final FLENGTH_C360_ORG:I = 0x20
.field private static final FNAME_C360:Ljava/lang/String; = "c360"
.field private static final JPG_EXTEND:Ljava/lang/String; = "jpg"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private isValidName(Ljava/lang/String;)Z
.registers 6
const/4 v2, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
const/16 v3, 0x1c
if-eq v1, v3, :cond_e
const/16 v3, 0x20
if-eq v1, v3, :cond_e
:goto_d
:cond_d
return v2
:cond_e
sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v3, "c360"
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_d
const/4 v2, 0x1
goto :goto_d
.end method
.method public recognize(Ljava/lang/String;)I
.registers 12
const/4 v6, 0x1
const/4 v5, -0x1
const/4 v7, 0x0
const-string/jumbo v8, "/"
invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
array-length v8, v4
add-int/lit8 v8, v8, -0x1
aget-object v0, v4, v8
const-string/jumbo v8, "\\."
invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
array-length v8, v3
const/4 v9, 0x2
if-ge v8, v9, :cond_1b
:goto_1a
:cond_1a
return v5
:cond_1b
const-string/jumbo v8, "jpg"
aget-object v9, v3, v6
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_1a
aget-object v8, v3, v7
invoke-direct {p0, v8}, Lorg/pinguo/cloudshare/support/scanner/FileNameRecognizer;->isValidName(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_59
aget-object v8, v3, v7
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v1
const/16 v8, 0x1c
if-ne v8, v1, :cond_4c
const-string/jumbo v5, ".jpg"
const-string/jumbo v7, "_org.jpg"
invoke-virtual {p1, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/pinguo/cloudshare/support/scanner/FileUtils;->isAccessAble(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_4a
move v5, v6
goto :goto_1a
:cond_4a
const/4 v5, 0x4
goto :goto_1a
:cond_4c
aget-object v6, v3, v7
const-string/jumbo v8, "_org"
invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_1a
move v5, v7
goto :goto_1a
:cond_59
const/4 v5, 0x3
goto :goto_1a
.end method