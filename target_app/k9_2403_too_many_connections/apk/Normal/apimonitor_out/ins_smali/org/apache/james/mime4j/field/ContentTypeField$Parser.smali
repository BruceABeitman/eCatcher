.class public Lorg/apache/james/mime4j/field/ContentTypeField$Parser;
.super Ljava/lang/Object;
.source "ContentTypeField.java"
.implements Lorg/apache/james/mime4j/field/FieldParser;
.field private static log:Lorg/apache/commons/logging/Log;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;
invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
move-result-object v0
sput-object v0, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
.registers 23
const/4 v8, 0x0
const-string v6, ""
const/4 v7, 0x0
new-instance v16, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
new-instance v2, Ljava/io/StringReader;
move-object v0, v2
move-object/from16 v1, p2
invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v16
move-object v1, v2
invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/Reader;)V
:try_start_14
invoke-virtual/range {v16 .. v16}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parseAll()V
:try_start_17
:try_end_17
.catch Lorg/apache/james/mime4j/field/contenttype/parser/ParseException; {:try_start_14 .. :try_end_17} :catch_8c
.catch Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError; {:try_start_14 .. :try_end_17} :catch_c1
:goto_17
invoke-virtual/range {v16 .. v16}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getType()Ljava/lang/String;
move-result-object v18
invoke-virtual/range {v16 .. v16}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getSubType()Ljava/lang/String;
move-result-object v17
if-eqz v18, :cond_ff
if-eqz v17, :cond_ff
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
move-object v0, v2
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual/range {v16 .. v16}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getSubType()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v6
invoke-virtual/range {v16 .. v16}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamNames()Ljava/util/ArrayList;
move-result-object v12
invoke-virtual/range {v16 .. v16}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamValues()Ljava/util/ArrayList;
:try_end_4c
.catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_4c} :catch_fe
move-result-object v14
if-eqz v12, :cond_ff
if-eqz v14, :cond_ff
const/4 v10, 0x0
move-object v15, v7
:try_start_53
:goto_53
invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v10, v2, :cond_111
invoke-virtual {v14}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v10, v2, :cond_111
if-nez v15, :cond_10e
new-instance v7, Ljava/util/HashMap;
invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
move-result v2
int-to-double v2, v2
const-wide v4, 0x3ff4cccccccccccdL
mul-double/2addr v2, v4
const-wide/high16 v4, 0x3ff0
add-double/2addr v2, v4
double-to-int v2, v2
invoke-direct {v7, v2}, Ljava/util/HashMap;-><init>(I)V
:try_start_75
:try_end_75
.catch Ljava/lang/NullPointerException; {:try_start_53 .. :try_end_75} :catch_10b
:goto_75
invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v11
invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Ljava/lang/String;
invoke-interface {v7, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_88
.catch Ljava/lang/NullPointerException; {:try_start_75 .. :try_end_88} :catch_fe
add-int/lit8 v10, v10, 0x1
move-object v15, v7
goto :goto_53
:catch_8c
move-exception v9
sget-object v2, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z
move-result v2
if-eqz v2, :cond_be
sget-object v2, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Parsing value \'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object v0, v3
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\': "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
:cond_be
move-object v8, v9
goto/16 :goto_17
:catch_c1
move-exception v9
sget-object v2, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z
move-result v2
if-eqz v2, :cond_f3
sget-object v2, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Parsing value \'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object v0, v3
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\': "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
:cond_f3
new-instance v8, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v8, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Ljava/lang/String;)V
goto/16 :goto_17
:catch_fe
move-exception v2
:cond_ff
:goto_ff
new-instance v2, Lorg/apache/james/mime4j/field/ContentTypeField;
move-object/from16 v3, p1
move-object/from16 v4, p2
move-object/from16 v5, p3
invoke-direct/range {v2 .. v8}, Lorg/apache/james/mime4j/field/ContentTypeField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;)V
return-object v2
:catch_10b
move-exception v2
move-object v7, v15
goto :goto_ff
:cond_10e
move-object v7, v15
goto/16 :goto_75
:cond_111
move-object v7, v15
goto :goto_ff
.end method