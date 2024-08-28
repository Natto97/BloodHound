-- Copyright 2024 Specter Ops, Inc.
--
-- Licensed under the Apache License, Version 2.0
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-- SPDX-License-Identifier: Apache-2.0

-- -- Fix Parameter table missing autoincr
-- CREATE SEQUENCE IF NOT EXISTS parameter_id_seq
--     AS integer
--     START WITH 1
--     INCREMENT BY 1
--     NO MINVALUE
--     NO MAXVALUE
--     CACHE 1
--     OWNED BY parameters.id;

-- Add Prune TTLs
INSERT INTO parameters (id, key, name, description, value, created_at, updated_at) VALUES (3, 'prune.ttl', 'Prune Retention TTL Configuration Parameters', 'This configuration parameter sets the retention TTLs during analysis pruning.', '{"base_ttl": "P7D", "has_session_edge_ttl": "P3D"}', current_timestamp, current_timestamp) ON CONFLICT DO NOTHING;
