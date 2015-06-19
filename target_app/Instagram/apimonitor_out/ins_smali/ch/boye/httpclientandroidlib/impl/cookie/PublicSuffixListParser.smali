.class public Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixListParser;
.super Ljava/lang/Object;
.source "PublicSuffixListParser.java"
.field private static final MAX_LINE_LEN:I = 0x100
.field private final filter:Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixListParser;->filter:Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;
return-void
.end method
.method private readLine(Ljava/io/Reader;Ljava/lang/StringBuilder;)Z
.registers 10
const/4 v2, 0x1
const/4 v6, -0x1
const/4 v1, 0x0
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V
move v0, v1
:cond_7
invoke-virtual {p1}, Ljava/io/Reader;->read()I
move-result v3
if-eq v3, v6, :cond_2e
int-to-char v4, v3
const/16 v5, 0xa
if-eq v4, v5, :cond_2e
invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z
move-result v3
if-eqz v3, :cond_19
move v0, v2
:cond_19
if-nez v0, :cond_1e
invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_1e
invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I
move-result v3
const/16 v4, 0x100
if-le v3, v4, :cond_7
new-instance v0, Ljava/io/IOException;
const-string v1, "Line too long"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2e
if-eq v3, v6, :cond_31
move v1, v2
:cond_31
return v1
.end method
.method public parse(Ljava/io/Reader;)V
.registers 10
const/4 v1, 0x1
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
new-instance v5, Ljava/io/BufferedReader;
invoke-direct {v5, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
new-instance v6, Ljava/lang/StringBuilder;
const/16 v0, 0x100
invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V
move v0, v1
:goto_18
if-eqz v0, :cond_54
invoke-direct {p0, v5, v6}, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixListParser;->readLine(Ljava/io/Reader;Ljava/lang/StringBuilder;)Z
move-result v2
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v7
if-eqz v7, :cond_5f
const-string v7, "//"
invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_5f
const-string v7, "."
invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_3c
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_3c
const-string v7, "!"
invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_48
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_48
if-eqz v7, :cond_4f
invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
move v0, v2
goto :goto_18
:cond_4f
invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
move v0, v2
goto :goto_18
:cond_54
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixListParser;->filter:Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->setPublicSuffixes(Ljava/util/Collection;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixListParser;->filter:Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;
invoke-virtual {v0, v4}, Lch/boye/httpclientandroidlib/impl/cookie/PublicSuffixFilter;->setExceptions(Ljava/util/Collection;)V
return-void
:cond_5f
move v0, v2
goto :goto_18
.end method