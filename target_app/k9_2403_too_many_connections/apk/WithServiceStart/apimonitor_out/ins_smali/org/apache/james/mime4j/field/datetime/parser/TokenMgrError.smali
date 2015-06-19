.class public Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;
.super Ljava/lang/Error;
.source "TokenMgrError.java"
.field static final INVALID_LEXICAL_STATE:I = 0x2
.field static final LEXICAL_ERROR:I = 0x0
.field static final LOOP_DETECTED:I = 0x3
.field static final STATIC_LEXER_ERROR:I = 0x1
.field  errorCode:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Error;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->errorCode:I
return-void
.end method
.method public constructor <init>(ZIIILjava/lang/String;CI)V
.registers 9
invoke-static/range {p1 .. p6}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->LexicalError(ZIIILjava/lang/String;C)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p7}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method protected static LexicalError(ZIIILjava/lang/String;C)Ljava/lang/String;
.registers 10
const-string v3, "\""
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Lexical error at line "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", column "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".  Encountered: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
if-eqz p0, :cond_42
const-string v1, "<EOF> "
:goto_25
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "after : \""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p4}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->addEscapes(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_42
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\""
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->addEscapes(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\""
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "), "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_25
.end method
.method protected static final addEscapes(Ljava/lang/String;)Ljava/lang/String;
.registers 8
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const/4 v1, 0x0
:goto_6
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ge v1, v4, :cond_93
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v4
sparse-switch v4, :sswitch_data_98
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v4, 0x20
if-lt v0, v4, :cond_1f
const/16 v4, 0x7e
if-le v0, v4, :cond_8f
:cond_1f
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "0000"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const/16 v5, 0x10
invoke-static {v0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "\\u"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v5
const/4 v6, 0x4
sub-int/2addr v5, v6
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v6
invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_5c
:sswitch_5c
add-int/lit8 v1, v1, 0x1
goto :goto_6
:sswitch_5f
const-string v4, "\\b"
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_5c
:sswitch_65
const-string v4, "\\t"
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_5c
:sswitch_6b
const-string v4, "\\n"
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_5c
:sswitch_71
const-string v4, "\\f"
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_5c
:sswitch_77
const-string v4, "\\r"
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_5c
:sswitch_7d
const-string v4, "\\\""
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_5c
:sswitch_83
const-string v4, "\\\'"
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_5c
:sswitch_89
const-string v4, "\\\\"
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_5c
:cond_8f
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_5c
:cond_93
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
:sswitch_data_98
.sparse-switch
0x0 -> :sswitch_5c
0x8 -> :sswitch_5f
0x9 -> :sswitch_65
0xa -> :sswitch_6b
0xc -> :sswitch_71
0xd -> :sswitch_77
0x22 -> :sswitch_7d
0x27 -> :sswitch_83
0x5c -> :sswitch_89
.end sparse-switch
.end method
.method public getMessage()Ljava/lang/String;
.registers 2
invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;
move-result-object v0
return-object v0
.end method