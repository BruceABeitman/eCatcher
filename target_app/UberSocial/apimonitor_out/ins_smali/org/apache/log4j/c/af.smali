.class public Lorg/apache/log4j/c/af;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "<![CDATA["
.field private static final b:Ljava/lang/String; = "]]>"
.field private static final c:Ljava/lang/String; = "]]&gt;"
.field private static final d:Ljava/lang/String; = "]]>]]&gt;<![CDATA["
.field private static final e:I
.method static constructor <clinit>()V
.registers 1
const-string v0, "]]>"
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
sput v0, Lorg/apache/log4j/c/af;->e:I
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/16 v7, 0x3c
const/16 v6, 0x26
const/16 v5, 0x22
const/16 v4, 0x3e
const/4 v1, -0x1
if-eqz p0, :cond_29
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_29
invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ne v0, v1, :cond_2a
invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ne v0, v1, :cond_2a
invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ne v0, v1, :cond_2a
invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ne v0, v1, :cond_2a
:cond_29
:goto_29
return-object p0
:cond_2a
new-instance v1, Ljava/lang/StringBuffer;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v0, v0, 0x6
invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
const/4 v0, 0x0
:goto_3a
if-ge v0, v2, :cond_6c
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
if-le v3, v4, :cond_48
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_45
add-int/lit8 v0, v0, 0x1
goto :goto_3a
:cond_48
if-ne v3, v7, :cond_50
const-string v3, "&lt;"
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_45
:cond_50
if-ne v3, v4, :cond_58
const-string v3, "&gt;"
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_45
:cond_58
if-ne v3, v6, :cond_60
const-string v3, "&amp;"
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_45
:cond_60
if-ne v3, v5, :cond_68
const-string v3, "&quot;"
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_45
:cond_68
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_45
:cond_6c
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_29
.end method
.method public static a(Ljava/lang/StringBuffer;Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_d
const-string v0, "]]>"
invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-gez v1, :cond_e
invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_d
:goto_d
return-void
:cond_e
const/4 v0, 0x0
:goto_f
const/4 v2, -0x1
if-le v1, v2, :cond_2e
invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v0, "]]>]]&gt;<![CDATA["
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
sget v0, Lorg/apache/log4j/c/af;->e:I
add-int/2addr v0, v1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-ge v0, v1, :cond_d
const-string v1, "]]>"
invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v1
goto :goto_f
:cond_2e
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_d
.end method