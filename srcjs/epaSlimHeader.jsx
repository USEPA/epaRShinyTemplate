import { reactShinyInput } from 'reactR';
import { Header } from "@us-epa-camd/easey-design-system";
import '@trussworks/react-uswds/lib/index.css';
import "./index.scss";
import '@trussworks/react-uswds/lib/uswds.css';

function epaHeadNavigation({ configuration, value }) {
  return (
    <>
      <div className={"topHeader"}>
        <div className="epa-header">
          <Header environment={value} />
        </div>
      </div>
    </>
  );
}

reactShinyInput(
  '.epaSlimHeader',
  'epaRShinyTemplate.epaSlimHeader',
  epaHeadNavigation
);
